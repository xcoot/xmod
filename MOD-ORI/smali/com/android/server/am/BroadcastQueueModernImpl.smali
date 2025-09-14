.class public final Lcom/android/server/am/BroadcastQueueModernImpl;
.super Lcom/android/server/am/BroadcastQueue;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;

.field public static final QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;


# instance fields
.field public final mAnrTimer:Lcom/android/server/am/BroadcastQueueModernImpl$BroadcastAnrTimer;

.field public final mBgConstants:Lcom/android/server/am/BroadcastConstants;

.field final mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field final mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

.field public final mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

.field public final mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

.field public mCheckPendingColdStartQueued:Z

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public final mDelayedBroadcasts:Ljava/util/ArrayList;

.field public final mFgConstants:Lcom/android/server/am/BroadcastConstants;

.field public mLastTestFailureTime:J

.field public final mLocalCallback:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda12;

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mProcessQueues:Landroid/util/SparseArray;

.field public final mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

.field public mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mUidForeground:Landroid/util/SparseBooleanArray;

.field public final mWaitingFor:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/am/BroadcastQueueModernImpl;->QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/am/BroadcastQueueModernImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/BroadcastSkipPolicy;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastSkipPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/am/BroadcastHistory;

    .line 7
    .line 8
    invoke-direct {v1, p1, p3}, Lcom/android/server/am/BroadcastHistory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastConstants;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance p1, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    .line 52
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    .line 59
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 60
    .line 61
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 65
    .line 66
    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda12;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 78
    .line 79
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 80
    .line 81
    const/4 v1, 0x2

    .line 82
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 86
    .line 87
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 88
    .line 89
    const/4 v1, 0x3

    .line 90
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 94
    .line 95
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 96
    .line 97
    const/4 v1, 0x4

    .line 98
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 102
    .line 103
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 104
    .line 105
    const/4 v1, 0x5

    .line 106
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 110
    .line 111
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 112
    .line 113
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 114
    .line 115
    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 116
    .line 117
    new-instance p4, Landroid/os/Handler;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p4, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 124
    .line 125
    .line 126
    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 127
    .line 128
    iget p1, p3, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    .line 129
    .line 130
    iget p2, p3, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    .line 131
    .line 132
    add-int/2addr p1, p2

    .line 133
    new-array p1, p1, [Lcom/android/server/am/BroadcastProcessQueue;

    .line 134
    .line 135
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 136
    .line 137
    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$BroadcastAnrTimer;

    .line 138
    .line 139
    new-instance p2, Lcom/android/server/utils/AnrTimer$Args;

    .line 140
    .line 141
    invoke-direct {p2}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    .line 142
    .line 143
    .line 144
    const/4 p3, 0x2

    .line 145
    const-string v0, "BROADCAST_TIMEOUT"

    .line 146
    .line 147
    invoke-direct {p1, p4, p3, v0, p2}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    .line 148
    .line 149
    .line 150
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueModernImpl$BroadcastAnrTimer;

    .line 151
    .line 152
    return-void
.end method

.method public static containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z
    .locals 4

    .line 1
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    sub-int/2addr v1, v2

    .line 29
    :goto_0
    if-ltz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return v2
.end method


# virtual methods
.method public assertHealthLocked()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v4, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 9
    .line 10
    if-ne v4, v1, :cond_0

    .line 11
    .line 12
    move v4, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move v4, v3

    .line 15
    :goto_1
    const-string/jumbo v5, "runnableAtPrev"

    .line 16
    .line 17
    .line 18
    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v6, "isRunnable "

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    cmp-long v4, v4, v6

    .line 54
    .line 55
    if-ltz v4, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    move v2, v3

    .line 59
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v4, "getRunnableAt "

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, " vs "

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v2, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 86
    .line 87
    move-object v9, v1

    .line 88
    move-object v1, v0

    .line 89
    move-object v0, v9

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 92
    .line 93
    array-length v1, v0

    .line 94
    move v4, v3

    .line 95
    :goto_3
    if-ge v4, v1, :cond_5

    .line 96
    .line 97
    aget-object v5, v0, v4

    .line 98
    .line 99
    if-eqz v5, :cond_4

    .line 100
    .line 101
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string/jumbo v8, "isActive "

    .line 108
    .line 109
    .line 110
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v6, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-ltz v0, :cond_6

    .line 135
    .line 136
    move v0, v2

    .line 137
    goto :goto_4

    .line 138
    :cond_6
    move v0, v3

    .line 139
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string/jumbo v4, "isOrphaned "

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-ge v3, v0, :cond_a

    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    .line 174
    .line 175
    :goto_6
    if-eqz v0, :cond_9

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_8

    .line 182
    .line 183
    iget-boolean v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 184
    .line 185
    xor-int/2addr v1, v2

    .line 186
    const-string/jumbo v4, "mRunnableAtInvalidated"

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 193
    .line 194
    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 198
    .line 199
    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 203
    .line 204
    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_a
    return-void
.end method

.method public final checkHealth()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->assertHealthLocked()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    const-wide/32 v3, 0xea60

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    :try_start_1
    const-string v2, "BroadcastQueue"

    .line 22
    .line 23
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v2, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    .line 37
    .line 38
    new-instance v3, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v3, p0, v1}, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, v2, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 44
    .line 45
    const-string/jumbo v1, "broadcast_queue_dump"

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final checkPendingColdStartValidityLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 14
    .line 15
    xor-int/2addr v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 18
    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mCheckPendingColdStartQueued:Z

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 28
    .line 29
    iget-wide v3, v1, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mCheckPendingColdStartQueued:Z

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->clearInvalidPendingColdStart()V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    return-void
.end method

.method public final cleanupDisabledPackageReceiversLocked(ILjava/lang/String;Ljava/util/Set;)Z
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    const-wide/16 v1, 0x2000

    .line 8
    .line 9
    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;-><init>(II)V

    .line 17
    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    invoke-direct {p1, p2, p3}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-direct {p1, p3, p2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance v0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-direct {v0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sget-object p2, Lcom/android/server/am/BroadcastQueueModernImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;

    .line 41
    .line 42
    iget-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :goto_0
    if-ltz v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ne v2, p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p3, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move-object p1, p2

    .line 69
    :goto_1
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 70
    .line 71
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0
.end method

.method public final clearInvalidPendingColdStart()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Clearing invalid pending cold start: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/am/Flags;->avoidRepeatedBcastReEnqueues()Z

    .line 26
    .line 27
    .line 28
    iget-boolean v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    const-string/jumbo v2, "invalid start with re-enqueued broadcast"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v1, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 57
    .line 58
    iput v2, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    iput v4, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const-wide/16 v2, 0x40

    .line 87
    .line 88
    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "deliveryTimeout"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    const-string/jumbo v2, "deliveryTimeoutLocked"

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    .line 10
    .line 11
    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v2

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "Ignoring demoteFromRunning; no active broadcast for "

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    const-string/jumbo v0, "demoteFromRunning"

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x0

    .line 72
    iput-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    iput v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 76
    .line 77
    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 78
    .line 79
    iput v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 80
    .line 81
    iput v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 82
    .line 83
    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 87
    .line 88
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const-wide/16 v5, 0x40

    .line 95
    .line 96
    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 104
    .line 105
    aput-object v1, v4, v3

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 111
    .line 112
    .line 113
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 118
    .line 119
    iget v4, v3, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 120
    .line 121
    sub-int/2addr v4, v2

    .line 122
    iput v4, v3, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 123
    .line 124
    iget-boolean p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 125
    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;ZZZLjava/lang/String;Z)Z
    .locals 25
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v8

    .line 9
    new-instance v10, Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    move-object/from16 v2, p1

    .line 12
    .line 13
    invoke-direct {v10, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "\ud83d\udccb Per-process queues:"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 29
    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    :goto_0
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/16 v13, 0x20

    .line 39
    .line 40
    if-ge v12, v2, :cond_11

    .line 41
    .line 42
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    .line 49
    .line 50
    move-object v14, v2

    .line 51
    :goto_1
    if-eqz v14, :cond_10

    .line 52
    .line 53
    iget-object v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 54
    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    invoke-virtual {v14}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    iget-object v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_0
    invoke-virtual {v14}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v2, " "

    .line 81
    .line 82
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v14, v8, v9}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 96
    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-boolean v3, v14, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 104
    .line 105
    if-eqz v3, :cond_1

    .line 106
    .line 107
    const-string v3, "FG"

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_1
    iget-boolean v3, v14, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 113
    .line 114
    const-string/jumbo v4, "|"

    .line 115
    .line 116
    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-lez v3, :cond_2

    .line 124
    .line 125
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_2
    const-string v3, "FRZ"

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-boolean v3, v14, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 134
    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-lez v3, :cond_4

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_4
    const-string v3, "INSTR"

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    :cond_5
    iget-boolean v3, v14, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 152
    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-lez v3, :cond_6

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_6
    const-string v3, "PER"

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-lez v3, :cond_8

    .line 174
    .line 175
    const-string/jumbo v3, "state:"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    iget-boolean v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 185
    .line 186
    if-eqz v2, :cond_9

    .line 187
    .line 188
    const-string/jumbo v2, "runningOomAdjusted:"

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-boolean v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 195
    .line 196
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 197
    .line 198
    .line 199
    :cond_9
    iget-boolean v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 200
    .line 201
    if-eqz v2, :cond_a

    .line 202
    .line 203
    const-string v2, "activeReEnqueued:"

    .line 204
    .line 205
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-boolean v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 209
    .line 210
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 211
    .line 212
    .line 213
    :cond_a
    const-string/jumbo v2, "e:"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 220
    .line 221
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 222
    .line 223
    .line 224
    const-string v2, " d:"

    .line 225
    .line 226
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 230
    .line 231
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 232
    .line 233
    .line 234
    const-string v2, " f:"

    .line 235
    .line 236
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 240
    .line 241
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 242
    .line 243
    .line 244
    const-string v2, " fd:"

    .line 245
    .line 246
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 250
    .line 251
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 252
    .line 253
    .line 254
    const-string v2, " o:"

    .line 255
    .line 256
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 260
    .line 261
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 262
    .line 263
    .line 264
    const-string v2, " a:"

    .line 265
    .line 266
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 270
    .line 271
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 272
    .line 273
    .line 274
    const-string v2, " p:"

    .line 275
    .line 276
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 280
    .line 281
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 282
    .line 283
    .line 284
    const-string v2, " pd:"

    .line 285
    .line 286
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 290
    .line 291
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 292
    .line 293
    .line 294
    const-string v2, " int:"

    .line 295
    .line 296
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 300
    .line 301
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 302
    .line 303
    .line 304
    const-string v2, " rt:"

    .line 305
    .line 306
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 310
    .line 311
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 312
    .line 313
    .line 314
    const-string v2, " ins:"

    .line 315
    .line 316
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 320
    .line 321
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 322
    .line 323
    .line 324
    const-string v2, " m:"

    .line 325
    .line 326
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 330
    .line 331
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 332
    .line 333
    .line 334
    const-string v2, " csi:"

    .line 335
    .line 336
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 340
    .line 341
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 342
    .line 343
    .line 344
    const-string v2, " adcsi:"

    .line 345
    .line 346
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 350
    .line 351
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 352
    .line 353
    .line 354
    const-string v2, " ccu:"

    .line 355
    .line 356
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 360
    .line 361
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 362
    .line 363
    .line 364
    const-string v2, " ccn:"

    .line 365
    .line 366
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    .line 370
    .line 371
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 375
    .line 376
    .line 377
    iget-object v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-nez v2, :cond_b

    .line 384
    .line 385
    const/4 v2, 0x0

    .line 386
    :goto_2
    iget-object v3, v14, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-ge v2, v3, :cond_b

    .line 393
    .line 394
    iget-object v3, v14, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 401
    .line 402
    const-string v4, "OUTGOING "

    .line 403
    .line 404
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-wide v4, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 408
    .line 409
    invoke-static {v4, v5, v8, v9, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v10, v13}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v10, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    add-int/lit8 v2, v2, 0x1

    .line 423
    .line 424
    goto :goto_2

    .line 425
    :cond_b
    iget-object v6, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 426
    .line 427
    if-eqz v6, :cond_c

    .line 428
    .line 429
    const-string v2, "ACTIVE"

    .line 430
    .line 431
    iget v7, v14, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 432
    .line 433
    move-wide v3, v8

    .line 434
    move-object v5, v10

    .line 435
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 436
    .line 437
    .line 438
    :cond_c
    iget-object v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object v15

    .line 444
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_d

    .line 449
    .line 450
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 455
    .line 456
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 457
    .line 458
    move-object v6, v3

    .line 459
    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 460
    .line 461
    const-string v3, "URGENT"

    .line 462
    .line 463
    iget v7, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 464
    .line 465
    move-object v2, v3

    .line 466
    move-wide v3, v8

    .line 467
    move-object v5, v10

    .line 468
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 469
    .line 470
    .line 471
    goto :goto_3

    .line 472
    :cond_d
    iget-object v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 473
    .line 474
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v15

    .line 478
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    if-eqz v2, :cond_e

    .line 483
    .line 484
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 489
    .line 490
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 491
    .line 492
    move-object v6, v3

    .line 493
    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 494
    .line 495
    const/4 v3, 0x0

    .line 496
    iget v7, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 497
    .line 498
    move-object v2, v3

    .line 499
    move-wide v3, v8

    .line 500
    move-object v5, v10

    .line 501
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 502
    .line 503
    .line 504
    goto :goto_4

    .line 505
    :cond_e
    iget-object v2, v14, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 506
    .line 507
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 508
    .line 509
    .line 510
    move-result-object v15

    .line 511
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_f

    .line 516
    .line 517
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 522
    .line 523
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 524
    .line 525
    move-object v6, v3

    .line 526
    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 527
    .line 528
    const-string v3, "OFFLOAD"

    .line 529
    .line 530
    iget v7, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 531
    .line 532
    move-object v2, v3

    .line 533
    move-wide v3, v8

    .line 534
    move-object v5, v10

    .line 535
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 536
    .line 537
    .line 538
    goto :goto_5

    .line 539
    :cond_f
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 543
    .line 544
    .line 545
    :goto_6
    iget-object v14, v14, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 546
    .line 547
    goto/16 :goto_1

    .line 548
    .line 549
    :cond_10
    add-int/lit8 v12, v12, 0x1

    .line 550
    .line 551
    goto/16 :goto_0

    .line 552
    .line 553
    :cond_11
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 557
    .line 558
    .line 559
    const-string/jumbo v2, "\ud83e\uddcd Runnable:"

    .line 560
    .line 561
    .line 562
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 566
    .line 567
    .line 568
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 569
    .line 570
    if-nez v2, :cond_12

    .line 571
    .line 572
    const-string v2, "(none)"

    .line 573
    .line 574
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    goto :goto_8

    .line 578
    :cond_12
    :goto_7
    if-eqz v2, :cond_14

    .line 579
    .line 580
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 581
    .line 582
    .line 583
    move-result-wide v3

    .line 584
    invoke-static {v3, v4, v8, v9, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v10, v13}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 588
    .line 589
    .line 590
    iget-boolean v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 591
    .line 592
    if-eqz v3, :cond_13

    .line 593
    .line 594
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 595
    .line 596
    .line 597
    :cond_13
    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 598
    .line 599
    invoke-static {v3}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v10, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v10, v13}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    invoke-virtual {v10, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 617
    .line 618
    .line 619
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 620
    .line 621
    goto :goto_7

    .line 622
    :cond_14
    :goto_8
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 626
    .line 627
    .line 628
    const-string/jumbo v2, "\ud83c\udfc3 Running:"

    .line 629
    .line 630
    .line 631
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 635
    .line 636
    .line 637
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 638
    .line 639
    array-length v3, v2

    .line 640
    const/4 v4, 0x0

    .line 641
    :goto_9
    if-ge v4, v3, :cond_17

    .line 642
    .line 643
    aget-object v5, v2, v4

    .line 644
    .line 645
    if-eqz v5, :cond_15

    .line 646
    .line 647
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 648
    .line 649
    if-ne v5, v6, :cond_15

    .line 650
    .line 651
    const-string/jumbo v6, "\ud83e\udd76 "

    .line 652
    .line 653
    .line 654
    invoke-virtual {v10, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    goto :goto_a

    .line 658
    :cond_15
    const-string/jumbo v6, "\u3000 "

    .line 659
    .line 660
    .line 661
    invoke-virtual {v10, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    :goto_a
    if-eqz v5, :cond_16

    .line 665
    .line 666
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    invoke-virtual {v10, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    goto :goto_b

    .line 674
    :cond_16
    const-string v5, "(none)"

    .line 675
    .line 676
    invoke-virtual {v10, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 680
    .line 681
    goto :goto_9

    .line 682
    :cond_17
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 686
    .line 687
    .line 688
    const-string v2, "Broadcasts with ignored delivery group policies:"

    .line 689
    .line 690
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 694
    .line 695
    .line 696
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 697
    .line 698
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    .line 699
    .line 700
    monitor-enter v3

    .line 701
    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    .line 702
    .line 703
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 707
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 711
    .line 712
    .line 713
    const-string v2, "Foreground UIDs:"

    .line 714
    .line 715
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 719
    .line 720
    .line 721
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 722
    .line 723
    invoke-virtual {v10, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 730
    .line 731
    .line 732
    if-eqz p2, :cond_19

    .line 733
    .line 734
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 735
    .line 736
    monitor-enter v3

    .line 737
    :try_start_1
    const-string v4, "Broadcast parameters (key="

    .line 738
    .line 739
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    iget-object v4, v3, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    .line 743
    .line 744
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    const-string v4, ", observing="

    .line 748
    .line 749
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    iget-object v4, v3, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    .line 753
    .line 754
    if-eqz v4, :cond_18

    .line 755
    .line 756
    const/4 v4, 0x1

    .line 757
    goto :goto_c

    .line 758
    :cond_18
    const/4 v4, 0x0

    .line 759
    :goto_c
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 760
    .line 761
    .line 762
    const-string v4, "):"

    .line 763
    .line 764
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 768
    .line 769
    .line 770
    const-string v4, "bcast_timeout"

    .line 771
    .line 772
    iget-wide v5, v3, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 773
    .line 774
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v5

    .line 778
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 783
    .line 784
    .line 785
    const-string v4, "bcast_allow_bg_activity_start_timeout"

    .line 786
    .line 787
    iget-wide v5, v3, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 788
    .line 789
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v5

    .line 793
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 804
    .line 805
    .line 806
    const-string v4, "Broadcast parameters (namespace="

    .line 807
    .line 808
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    const-string v4, "activity_manager_native_boot"

    .line 812
    .line 813
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    const-string v4, "):"

    .line 817
    .line 818
    invoke-virtual {v10, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 822
    .line 823
    .line 824
    const-string v4, "bcast_max_running_process_queues"

    .line 825
    .line 826
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    .line 827
    .line 828
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 829
    .line 830
    .line 831
    move-result-object v5

    .line 832
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 833
    .line 834
    .line 835
    move-result-object v4

    .line 836
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 837
    .line 838
    .line 839
    const-string v4, "bcast_max_running_active_broadcasts"

    .line 840
    .line 841
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 842
    .line 843
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 852
    .line 853
    .line 854
    const-string v4, "bcast_max_core_running_blocking_broadcasts"

    .line 855
    .line 856
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 857
    .line 858
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 859
    .line 860
    .line 861
    move-result-object v5

    .line 862
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 863
    .line 864
    .line 865
    move-result-object v4

    .line 866
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 867
    .line 868
    .line 869
    const-string v4, "bcast_max_core_running_non_blocking_broadcasts"

    .line 870
    .line 871
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 872
    .line 873
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 874
    .line 875
    .line 876
    move-result-object v5

    .line 877
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 882
    .line 883
    .line 884
    const-string v4, "bcast_max_pending_broadcasts"

    .line 885
    .line 886
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    .line 887
    .line 888
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 889
    .line 890
    .line 891
    move-result-object v5

    .line 892
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 897
    .line 898
    .line 899
    const-string v4, "bcast_delay_normal_millis"

    .line 900
    .line 901
    iget-wide v5, v3, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    .line 902
    .line 903
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v5

    .line 907
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 908
    .line 909
    .line 910
    move-result-object v4

    .line 911
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 912
    .line 913
    .line 914
    const-string v4, "bcast_delay_cached_millis"

    .line 915
    .line 916
    iget-wide v5, v3, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    .line 917
    .line 918
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v5

    .line 922
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 927
    .line 928
    .line 929
    const-string v4, "bcast_delay_urgent_millis"

    .line 930
    .line 931
    iget-wide v5, v3, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 932
    .line 933
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v5

    .line 937
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 942
    .line 943
    .line 944
    const-string v4, "bcast_delay_foreground_proc_millis"

    .line 945
    .line 946
    iget-wide v5, v3, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    .line 947
    .line 948
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v5

    .line 952
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 953
    .line 954
    .line 955
    move-result-object v4

    .line 956
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 957
    .line 958
    .line 959
    const-string v4, "bcast_delay_persistent_proc_millis"

    .line 960
    .line 961
    iget-wide v5, v3, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    .line 962
    .line 963
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 968
    .line 969
    .line 970
    move-result-object v4

    .line 971
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 972
    .line 973
    .line 974
    const-string v4, "bcast_max_history_complete_size"

    .line 975
    .line 976
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    .line 977
    .line 978
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 979
    .line 980
    .line 981
    move-result-object v5

    .line 982
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 983
    .line 984
    .line 985
    move-result-object v4

    .line 986
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 987
    .line 988
    .line 989
    const-string v4, "bcast_max_history_summary_size"

    .line 990
    .line 991
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    .line 992
    .line 993
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 994
    .line 995
    .line 996
    move-result-object v5

    .line 997
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 998
    .line 999
    .line 1000
    move-result-object v4

    .line 1001
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1002
    .line 1003
    .line 1004
    const-string v4, "bcast_max_consecutive_urgent_dispatches"

    .line 1005
    .line 1006
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    .line 1007
    .line 1008
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v5

    .line 1012
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1017
    .line 1018
    .line 1019
    const-string v4, "bcast_max_consecutive_normal_dispatches"

    .line 1020
    .line 1021
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    .line 1022
    .line 1023
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v5

    .line 1027
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1032
    .line 1033
    .line 1034
    const-string v4, "bcast_core_defer_until_active"

    .line 1035
    .line 1036
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastConstants;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 1037
    .line 1038
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v4

    .line 1046
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1047
    .line 1048
    .line 1049
    const-string/jumbo v4, "pending_cold_start_check_interval_millis"

    .line 1050
    .line 1051
    .line 1052
    iget-wide v5, v3, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    .line 1053
    .line 1054
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v5

    .line 1058
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v4

    .line 1062
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1063
    .line 1064
    .line 1065
    const-string/jumbo v4, "max_frozen_outgoing_broadcasts"

    .line 1066
    .line 1067
    .line 1068
    iget v5, v3, Lcom/android/server/am/BroadcastConstants;->MAX_FROZEN_OUTGOING_BROADCASTS:I

    .line 1069
    .line 1070
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v5

    .line 1074
    invoke-virtual {v10, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v4

    .line 1078
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v10}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1085
    .line 1086
    .line 1087
    monitor-exit v3

    .line 1088
    goto :goto_d

    .line 1089
    :catchall_0
    move-exception v0

    .line 1090
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1091
    throw v0

    .line 1092
    :cond_19
    :goto_d
    if-eqz p3, :cond_30

    .line 1093
    .line 1094
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 1095
    .line 1096
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 1097
    .line 1098
    .line 1099
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    .line 1103
    .line 1104
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 1105
    .line 1106
    iget-object v5, v4, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    .line 1107
    .line 1108
    const-string v6, "Frozen"

    .line 1109
    .line 1110
    invoke-static {v10, v3, v5, v6}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v5, v4, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 1114
    .line 1115
    const-string v6, "Pending"

    .line 1116
    .line 1117
    invoke-static {v10, v3, v5, v6}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    iget v5, v4, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 1121
    .line 1122
    const/4 v6, -0x1

    .line 1123
    move/from16 v7, p6

    .line 1124
    .line 1125
    move v8, v5

    .line 1126
    move v9, v6

    .line 1127
    const/4 v12, 0x0

    .line 1128
    :goto_e
    iget v13, v4, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    .line 1129
    .line 1130
    invoke-static {v8, v6, v13}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    .line 1131
    .line 1132
    .line 1133
    move-result v8

    .line 1134
    iget-object v13, v4, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 1135
    .line 1136
    aget-object v14, v13, v8

    .line 1137
    .line 1138
    const-string v15, ": "

    .line 1139
    .line 1140
    const-string v6, "  #"

    .line 1141
    .line 1142
    const-string v2, ":"

    .line 1143
    .line 1144
    const-string v11, " #"

    .line 1145
    .line 1146
    move-object/from16 p2, v13

    .line 1147
    .line 1148
    const-string v13, "    "

    .line 1149
    .line 1150
    move-object/from16 p3, v4

    .line 1151
    .line 1152
    const-string v4, "]:"

    .line 1153
    .line 1154
    if-nez v14, :cond_1a

    .line 1155
    .line 1156
    move v14, v5

    .line 1157
    move v5, v9

    .line 1158
    :goto_f
    const/4 v9, 0x1

    .line 1159
    goto/16 :goto_11

    .line 1160
    .line 1161
    :cond_1a
    add-int/lit8 v9, v9, 0x1

    .line 1162
    .line 1163
    move/from16 v17, v5

    .line 1164
    .line 1165
    if-eqz v1, :cond_1b

    .line 1166
    .line 1167
    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1168
    .line 1169
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v5

    .line 1173
    if-nez v5, :cond_1b

    .line 1174
    .line 1175
    move v5, v9

    .line 1176
    move/from16 v14, v17

    .line 1177
    .line 1178
    goto :goto_f

    .line 1179
    :cond_1b
    if-nez v12, :cond_1d

    .line 1180
    .line 1181
    if-eqz v7, :cond_1c

    .line 1182
    .line 1183
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 1184
    .line 1185
    .line 1186
    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    const-string v7, "  Historical broadcasts ["

    .line 1189
    .line 1190
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v5

    .line 1203
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    const/4 v7, 0x1

    .line 1207
    const/4 v12, 0x1

    .line 1208
    :cond_1d
    if-eqz p4, :cond_1e

    .line 1209
    .line 1210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    move/from16 p6, v7

    .line 1213
    .line 1214
    const-string v7, "  Historical Broadcast "

    .line 1215
    .line 1216
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v5

    .line 1229
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v14, v10, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 1239
    .line 1240
    .line 1241
    move/from16 p1, v9

    .line 1242
    .line 1243
    const/4 v9, 0x1

    .line 1244
    goto :goto_10

    .line 1245
    :cond_1e
    move/from16 p6, v7

    .line 1246
    .line 1247
    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    .line 1261
    .line 1262
    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1263
    .line 1264
    move/from16 p1, v9

    .line 1265
    .line 1266
    const/4 v7, 0x0

    .line 1267
    const/4 v9, 0x1

    .line 1268
    invoke-virtual {v5, v7, v9, v9, v7}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v5

    .line 1272
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 1276
    .line 1277
    if-eqz v5, :cond_1f

    .line 1278
    .line 1279
    iget-object v7, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1280
    .line 1281
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v7

    .line 1285
    if-eq v5, v7, :cond_1f

    .line 1286
    .line 1287
    const-string v5, "    targetComp: "

    .line 1288
    .line 1289
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    .line 1291
    .line 1292
    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 1293
    .line 1294
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v5

    .line 1298
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    .line 1300
    .line 1301
    :cond_1f
    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1302
    .line 1303
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v5

    .line 1307
    if-eqz v5, :cond_20

    .line 1308
    .line 1309
    const-string v7, "    extras: "

    .line 1310
    .line 1311
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v5

    .line 1318
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    :cond_20
    :goto_10
    move/from16 v5, p1

    .line 1322
    .line 1323
    move/from16 v7, p6

    .line 1324
    .line 1325
    move/from16 v14, v17

    .line 1326
    .line 1327
    :goto_11
    if-ne v8, v14, :cond_2f

    .line 1328
    .line 1329
    if-nez v1, :cond_29

    .line 1330
    .line 1331
    move-object/from16 v8, p3

    .line 1332
    .line 1333
    iget v14, v8, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 1334
    .line 1335
    iget v9, v8, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 1336
    .line 1337
    if-eqz p4, :cond_21

    .line 1338
    .line 1339
    move/from16 v17, v7

    .line 1340
    .line 1341
    move v5, v14

    .line 1342
    const/4 v7, -0x1

    .line 1343
    const/4 v12, -0x1

    .line 1344
    const/16 v18, 0x0

    .line 1345
    .line 1346
    goto :goto_14

    .line 1347
    :cond_21
    move/from16 p3, v5

    .line 1348
    .line 1349
    move/from16 v17, p3

    .line 1350
    .line 1351
    move v5, v14

    .line 1352
    :goto_12
    if-lez v17, :cond_23

    .line 1353
    .line 1354
    if-eq v5, v14, :cond_23

    .line 1355
    .line 1356
    move/from16 p6, v7

    .line 1357
    .line 1358
    const/4 v7, -0x1

    .line 1359
    invoke-static {v5, v7, v9}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    .line 1360
    .line 1361
    .line 1362
    move-result v5

    .line 1363
    aget-object v18, p2, v5

    .line 1364
    .line 1365
    if-nez v18, :cond_22

    .line 1366
    .line 1367
    :goto_13
    move/from16 v7, p6

    .line 1368
    .line 1369
    goto :goto_12

    .line 1370
    :cond_22
    add-int/lit8 v17, v17, -0x1

    .line 1371
    .line 1372
    goto :goto_13

    .line 1373
    :cond_23
    move/from16 p6, v7

    .line 1374
    .line 1375
    const/4 v7, -0x1

    .line 1376
    move/from16 v17, p6

    .line 1377
    .line 1378
    move/from16 v18, v12

    .line 1379
    .line 1380
    move/from16 v12, p3

    .line 1381
    .line 1382
    :goto_14
    invoke-static {v5, v7, v9}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    .line 1383
    .line 1384
    .line 1385
    move-result v5

    .line 1386
    iget-object v7, v8, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    .line 1387
    .line 1388
    aget-object v7, v7, v5

    .line 1389
    .line 1390
    if-nez v7, :cond_24

    .line 1391
    .line 1392
    move-object/from16 v19, v2

    .line 1393
    .line 1394
    move/from16 p2, v9

    .line 1395
    .line 1396
    move-object/from16 v24, v13

    .line 1397
    .line 1398
    move-object v9, v6

    .line 1399
    move-object v13, v8

    .line 1400
    goto/16 :goto_16

    .line 1401
    .line 1402
    :cond_24
    if-nez v18, :cond_26

    .line 1403
    .line 1404
    if-eqz v17, :cond_25

    .line 1405
    .line 1406
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 1407
    .line 1408
    .line 1409
    :cond_25
    move/from16 p2, v9

    .line 1410
    .line 1411
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1412
    .line 1413
    move-object/from16 v19, v2

    .line 1414
    .line 1415
    const-string v2, "  Historical broadcasts summary ["

    .line 1416
    .line 1417
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v2

    .line 1430
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    const/16 v17, 0x1

    .line 1434
    .line 1435
    const/16 v18, 0x1

    .line 1436
    .line 1437
    goto :goto_15

    .line 1438
    :cond_26
    move-object/from16 v19, v2

    .line 1439
    .line 1440
    move/from16 p2, v9

    .line 1441
    .line 1442
    :goto_15
    if-nez p4, :cond_27

    .line 1443
    .line 1444
    const/16 v2, 0x32

    .line 1445
    .line 1446
    if-lt v12, v2, :cond_27

    .line 1447
    .line 1448
    const-string v2, "  ..."

    .line 1449
    .line 1450
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    move-object v13, v8

    .line 1454
    goto/16 :goto_17

    .line 1455
    .line 1456
    :cond_27
    add-int/lit8 v12, v12, 0x1

    .line 1457
    .line 1458
    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    iget-object v2, v8, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    .line 1474
    .line 1475
    aget-wide v20, v2, v5

    .line 1476
    .line 1477
    iget-object v7, v8, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    .line 1478
    .line 1479
    aget-wide v22, v7, v5

    .line 1480
    .line 1481
    move/from16 p3, v12

    .line 1482
    .line 1483
    move-object v9, v13

    .line 1484
    sub-long v12, v20, v22

    .line 1485
    .line 1486
    invoke-static {v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1487
    .line 1488
    .line 1489
    const-string v12, " dispatch "

    .line 1490
    .line 1491
    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    .line 1493
    .line 1494
    iget-object v12, v8, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    .line 1495
    .line 1496
    aget-wide v20, v12, v5

    .line 1497
    .line 1498
    aget-wide v22, v2, v5

    .line 1499
    .line 1500
    move-object v13, v8

    .line 1501
    move-object/from16 v24, v9

    .line 1502
    .line 1503
    sub-long v8, v20, v22

    .line 1504
    .line 1505
    invoke-static {v8, v9, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1506
    .line 1507
    .line 1508
    const-string v8, " finish"

    .line 1509
    .line 1510
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    const-string v8, "    enq="

    .line 1514
    .line 1515
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1516
    .line 1517
    .line 1518
    new-instance v8, Ljava/util/Date;

    .line 1519
    .line 1520
    move-object v9, v6

    .line 1521
    aget-wide v6, v7, v5

    .line 1522
    .line 1523
    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v6

    .line 1530
    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    .line 1532
    .line 1533
    const-string v6, " disp="

    .line 1534
    .line 1535
    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1536
    .line 1537
    .line 1538
    new-instance v6, Ljava/util/Date;

    .line 1539
    .line 1540
    aget-wide v7, v2, v5

    .line 1541
    .line 1542
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v2

    .line 1549
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    const-string v2, " fin="

    .line 1553
    .line 1554
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    new-instance v2, Ljava/util/Date;

    .line 1558
    .line 1559
    aget-wide v6, v12, v5

    .line 1560
    .line 1561
    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v2

    .line 1568
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    .line 1570
    .line 1571
    move/from16 v12, p3

    .line 1572
    .line 1573
    :goto_16
    if-ne v5, v14, :cond_28

    .line 1574
    .line 1575
    goto :goto_17

    .line 1576
    :cond_28
    move-object v6, v9

    .line 1577
    move-object v8, v13

    .line 1578
    move-object/from16 v2, v19

    .line 1579
    .line 1580
    move-object/from16 v13, v24

    .line 1581
    .line 1582
    const/4 v7, -0x1

    .line 1583
    move/from16 v9, p2

    .line 1584
    .line 1585
    goto/16 :goto_14

    .line 1586
    .line 1587
    :cond_29
    move-object/from16 v13, p3

    .line 1588
    .line 1589
    move-object/from16 v19, v2

    .line 1590
    .line 1591
    move/from16 p6, v7

    .line 1592
    .line 1593
    move/from16 v17, p6

    .line 1594
    .line 1595
    :goto_17
    if-eqz p4, :cond_31

    .line 1596
    .line 1597
    if-eqz v1, :cond_2a

    .line 1598
    .line 1599
    goto/16 :goto_1a

    .line 1600
    .line 1601
    :cond_2a
    move-object v1, v13

    .line 1602
    iget-object v2, v1, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1603
    .line 1604
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 1605
    .line 1606
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1607
    .line 1608
    .line 1609
    iget v2, v1, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    .line 1610
    .line 1611
    move v3, v2

    .line 1612
    move/from16 v5, v17

    .line 1613
    .line 1614
    const/4 v7, -0x1

    .line 1615
    const/16 v16, 0x0

    .line 1616
    .line 1617
    :goto_18
    sget v6, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    .line 1618
    .line 1619
    const/4 v9, -0x1

    .line 1620
    invoke-static {v3, v9, v6}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    .line 1621
    .line 1622
    .line 1623
    move-result v3

    .line 1624
    iget-object v6, v1, Lcom/android/server/am/BroadcastHistory;->mAbortedBroadcastHistory:[Ljava/lang/String;

    .line 1625
    .line 1626
    aget-object v6, v6, v3

    .line 1627
    .line 1628
    if-nez v6, :cond_2b

    .line 1629
    .line 1630
    move-object/from16 v8, v19

    .line 1631
    .line 1632
    goto :goto_19

    .line 1633
    :cond_2b
    add-int/lit8 v7, v7, 0x1

    .line 1634
    .line 1635
    if-nez v16, :cond_2d

    .line 1636
    .line 1637
    if-eqz v5, :cond_2c

    .line 1638
    .line 1639
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 1640
    .line 1641
    .line 1642
    :cond_2c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1643
    .line 1644
    const-string v8, "  Aborted Historical broadcasts ["

    .line 1645
    .line 1646
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1647
    .line 1648
    .line 1649
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v5

    .line 1659
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    .line 1661
    .line 1662
    const/4 v5, 0x1

    .line 1663
    const/16 v16, 0x1

    .line 1664
    .line 1665
    :cond_2d
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1666
    .line 1667
    const-string v12, "  Aborted Historical Broadcast "

    .line 1668
    .line 1669
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v8

    .line 1682
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 1686
    .line 1687
    .line 1688
    move-object/from16 v8, v19

    .line 1689
    .line 1690
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    .line 1692
    .line 1693
    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    .line 1695
    .line 1696
    :goto_19
    if-ne v3, v2, :cond_2e

    .line 1697
    .line 1698
    iget-object v0, v1, Lcom/android/server/am/BroadcastHistory;->mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

    .line 1699
    .line 1700
    if-eqz v0, :cond_31

    .line 1701
    .line 1702
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v0

    .line 1706
    if-eqz v0, :cond_31

    .line 1707
    .line 1708
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 1709
    .line 1710
    .line 1711
    const-string v0, "  BOOT_COMPLETED broadcast history"

    .line 1712
    .line 1713
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    .line 1715
    .line 1716
    iget-object v0, v1, Lcom/android/server/am/BroadcastHistory;->mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

    .line 1717
    .line 1718
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v0

    .line 1722
    check-cast v0, Ljava/lang/String;

    .line 1723
    .line 1724
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    .line 1726
    .line 1727
    goto :goto_1a

    .line 1728
    :cond_2e
    move-object/from16 v19, v8

    .line 1729
    .line 1730
    goto :goto_18

    .line 1731
    :cond_2f
    move-object/from16 v2, p3

    .line 1732
    .line 1733
    move/from16 p3, v5

    .line 1734
    .line 1735
    move/from16 p6, v7

    .line 1736
    .line 1737
    move/from16 v9, p3

    .line 1738
    .line 1739
    move-object v4, v2

    .line 1740
    move v5, v14

    .line 1741
    const/4 v6, -0x1

    .line 1742
    goto/16 :goto_e

    .line 1743
    .line 1744
    :cond_30
    move/from16 v17, p6

    .line 1745
    .line 1746
    :cond_31
    :goto_1a
    return v17

    .line 1747
    :catchall_1
    move-exception v0

    .line 1748
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1749
    throw v0
.end method

.method public final enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 22

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    const/4 v11, 0x1

    .line 6
    invoke-static {}, Lcom/android/server/am/Flags;->deferOutgoingBroadcasts()Z

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "enqueueBroadcast"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v12

    .line 16
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 19
    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v14, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    move v2, v14

    .line 27
    :goto_0
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ge v2, v0, :cond_5

    .line 34
    .line 35
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    instance-of v3, v0, Landroid/content/pm/ResolveInfo;

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    move-object v3, v0

    .line 46
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 47
    .line 48
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 49
    .line 50
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 55
    .line 56
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v5, v6, v0}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move v0, v14

    .line 75
    :goto_1
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 76
    .line 77
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 80
    .line 81
    iget v5, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 82
    .line 83
    const/16 v6, 0x3e8

    .line 84
    .line 85
    if-eq v5, v6, :cond_4

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v5, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 103
    .line 104
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 105
    .line 106
    const v5, 0x186a0

    .line 107
    .line 108
    .line 109
    if-ge v4, v5, :cond_1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_1
    new-instance v4, Landroid/content/pm/ActivityInfo;

    .line 113
    .line 114
    invoke-direct {v4, v0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 118
    .line 119
    if-nez v0, :cond_2

    .line 120
    .line 121
    move-object v5, v13

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    .line 124
    .line 125
    invoke-direct {v5, v0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v14}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 129
    .line 130
    .line 131
    :goto_2
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    .line 133
    move-object v0, v4

    .line 134
    :cond_3
    :goto_3
    iput-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 135
    .line 136
    :cond_4
    add-int/2addr v2, v11

    .line 137
    goto :goto_0

    .line 138
    :cond_5
    :goto_4
    iget-object v0, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 139
    .line 140
    iget-object v1, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-nez v1, :cond_6

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move v0, v14

    .line 152
    goto :goto_5

    .line 153
    :cond_6
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    .line 154
    .line 155
    monitor-enter v2

    .line 156
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :goto_5
    if-eqz v0, :cond_7

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_7
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 167
    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    goto :goto_6

    .line 175
    :cond_8
    move v0, v14

    .line 176
    :goto_6
    if-eqz v0, :cond_e

    .line 177
    .line 178
    if-eq v0, v11, :cond_c

    .line 179
    .line 180
    const/4 v1, 0x2

    .line 181
    if-eq v0, v1, :cond_9

    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v2, "Unknown delivery group policy: "

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_9
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-le v0, v11, :cond_a

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_a
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupExtrasMerger()Landroid/os/BundleMerger;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-nez v0, :cond_b

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_b
    new-instance v1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;

    .line 220
    .line 221
    invoke-direct {v1, v9, v10, v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_c
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 226
    .line 227
    :goto_7
    iget-object v0, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 228
    .line 229
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/util/ArrayMap;

    .line 234
    .line 235
    if-nez v0, :cond_d

    .line 236
    .line 237
    new-instance v0, Landroid/util/ArrayMap;

    .line 238
    .line 239
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 240
    .line 241
    .line 242
    :cond_d
    sget-object v2, Lcom/android/server/am/BroadcastQueueModernImpl;->QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    .line 243
    .line 244
    new-instance v3, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;

    .line 245
    .line 246
    invoke-direct {v3, v9, v10, v0}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v9, v2, v3, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Z

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 253
    .line 254
    .line 255
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 256
    .line 257
    invoke-virtual {v1, v13, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    :cond_e
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 261
    .line 262
    .line 263
    move-result-wide v0

    .line 264
    iput-wide v0, v10, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 265
    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 267
    .line 268
    .line 269
    move-result-wide v0

    .line 270
    iput-wide v0, v10, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 271
    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 273
    .line 274
    .line 275
    move-result-wide v0

    .line 276
    iput-wide v0, v10, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 277
    .line 278
    iget-object v0, v9, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    .line 279
    .line 280
    iget-object v1, v0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    iget-object v0, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    iget-object v0, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 291
    .line 292
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Landroid/util/ArraySet;

    .line 297
    .line 298
    if-nez v0, :cond_f

    .line 299
    .line 300
    new-instance v0, Landroid/util/ArraySet;

    .line 301
    .line 302
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 303
    .line 304
    .line 305
    :cond_f
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 306
    .line 307
    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Landroid/util/ArrayMap;

    .line 312
    .line 313
    if-nez v1, :cond_10

    .line 314
    .line 315
    new-instance v1, Landroid/util/ArrayMap;

    .line 316
    .line 317
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 318
    .line 319
    .line 320
    :cond_10
    move-object v15, v1

    .line 321
    iput-object v15, v10, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    .line 322
    .line 323
    move v8, v14

    .line 324
    move/from16 v16, v8

    .line 325
    .line 326
    :goto_9
    iget-object v1, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 327
    .line 328
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-ge v8, v1, :cond_2c

    .line 333
    .line 334
    iget-object v1, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 335
    .line 336
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    instance-of v1, v6, Lcom/android/server/am/BroadcastFilter;

    .line 341
    .line 342
    if-eqz v1, :cond_11

    .line 343
    .line 344
    move-object v1, v6

    .line 345
    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    .line 346
    .line 347
    iget-object v1, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 348
    .line 349
    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 350
    .line 351
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 352
    .line 353
    goto :goto_a

    .line 354
    :cond_11
    move-object v1, v6

    .line 355
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 356
    .line 357
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 358
    .line 359
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 360
    .line 361
    :goto_a
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    invoke-virtual {v9, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 370
    .line 371
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 372
    .line 373
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-eqz v3, :cond_1d

    .line 378
    .line 379
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 380
    .line 381
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 382
    .line 383
    iget-boolean v4, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 384
    .line 385
    if-eqz v4, :cond_1d

    .line 386
    .line 387
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-nez v5, :cond_1d

    .line 396
    .line 397
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    iget-object v7, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 402
    .line 403
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 404
    .line 405
    .line 406
    move-result v14

    .line 407
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 408
    .line 409
    .line 410
    move-result v17

    .line 411
    invoke-virtual {v2, v14, v5}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v18

    .line 415
    sget-object v19, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 416
    .line 417
    monitor-enter v19

    .line 418
    :try_start_2
    invoke-virtual {v3, v4}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 419
    .line 420
    .line 421
    move-result-object v20

    .line 422
    if-eqz v20, :cond_12

    .line 423
    .line 424
    move/from16 v20, v11

    .line 425
    .line 426
    goto :goto_b

    .line 427
    :cond_12
    const/16 v20, 0x0

    .line 428
    .line 429
    :goto_b
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    if-eqz v20, :cond_1d

    .line 431
    .line 432
    invoke-virtual {v2, v14, v5}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result v19

    .line 436
    if-eqz v19, :cond_19

    .line 437
    .line 438
    iget-object v13, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 439
    .line 440
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v13

    .line 444
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 445
    .line 446
    .line 447
    move-result v19

    .line 448
    invoke-virtual {v2, v14, v5}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    sget-object v11, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 453
    .line 454
    invoke-virtual {v11, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 455
    .line 456
    .line 457
    move-result v11

    .line 458
    if-eqz v7, :cond_13

    .line 459
    .line 460
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 461
    .line 462
    if-eqz v7, :cond_13

    .line 463
    .line 464
    iget-object v7, v7, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 465
    .line 466
    if-eqz v7, :cond_13

    .line 467
    .line 468
    const/4 v7, 0x1

    .line 469
    goto :goto_c

    .line 470
    :cond_13
    const/4 v7, 0x0

    .line 471
    :goto_c
    if-eqz v19, :cond_14

    .line 472
    .line 473
    if-eqz v19, :cond_19

    .line 474
    .line 475
    move/from16 v21, v12

    .line 476
    .line 477
    iget-boolean v12, v3, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 478
    .line 479
    if-nez v12, :cond_15

    .line 480
    .line 481
    if-eqz v2, :cond_1a

    .line 482
    .line 483
    goto :goto_d

    .line 484
    :cond_14
    move/from16 v21, v12

    .line 485
    .line 486
    :cond_15
    :goto_d
    iget-object v2, v3, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 487
    .line 488
    if-eqz v2, :cond_16

    .line 489
    .line 490
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_16

    .line 495
    .line 496
    goto :goto_f

    .line 497
    :cond_16
    iget-object v2, v3, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 498
    .line 499
    if-eqz v2, :cond_1a

    .line 500
    .line 501
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-eqz v2, :cond_1a

    .line 506
    .line 507
    if-eqz v11, :cond_1a

    .line 508
    .line 509
    if-eqz v7, :cond_18

    .line 510
    .line 511
    invoke-virtual {v3, v14, v5}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_1a

    .line 516
    .line 517
    if-nez v13, :cond_17

    .line 518
    .line 519
    const-string/jumbo v2, "broadcast"

    .line 520
    .line 521
    .line 522
    goto :goto_e

    .line 523
    :cond_17
    const-string/jumbo v2, "broadcast-"

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    :goto_e
    invoke-virtual {v3, v14, v5, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    goto :goto_10

    .line 534
    :cond_18
    :goto_f
    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    .line 535
    .line 536
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 537
    .line 538
    invoke-virtual {v2, v8, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    goto :goto_12

    .line 542
    :cond_19
    move/from16 v21, v12

    .line 543
    .line 544
    :cond_1a
    :goto_10
    invoke-virtual {v3, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(I)Z

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    if-eqz v2, :cond_1e

    .line 549
    .line 550
    if-eqz v17, :cond_1b

    .line 551
    .line 552
    if-eqz v17, :cond_1e

    .line 553
    .line 554
    iget-boolean v2, v3, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 555
    .line 556
    if-nez v2, :cond_1b

    .line 557
    .line 558
    if-eqz v18, :cond_1e

    .line 559
    .line 560
    :cond_1b
    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 561
    .line 562
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    if-nez v2, :cond_1c

    .line 567
    .line 568
    const-string/jumbo v2, "broadcast"

    .line 569
    .line 570
    .line 571
    goto :goto_11

    .line 572
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    const-string/jumbo v5, "broadcast-"

    .line 575
    .line 576
    .line 577
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    iget-object v5, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 581
    .line 582
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v5

    .line 586
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    :goto_11
    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 594
    .line 595
    .line 596
    goto :goto_12

    .line 597
    :catchall_0
    move-exception v0

    .line 598
    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 599
    throw v0

    .line 600
    :cond_1d
    move/from16 v21, v12

    .line 601
    .line 602
    :cond_1e
    :goto_12
    iget-object v2, v9, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    .line 603
    .line 604
    invoke-virtual {v2, v10, v6}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    if-eqz v2, :cond_1f

    .line 609
    .line 610
    const-string/jumbo v1, "skipped by policy at enqueue("

    .line 611
    .line 612
    .line 613
    const-string v3, ")"

    .line 614
    .line 615
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v11

    .line 619
    const/4 v3, 0x0

    .line 620
    const/4 v7, 0x2

    .line 621
    const/4 v2, 0x0

    .line 622
    move-object/from16 v1, p0

    .line 623
    .line 624
    move-object/from16 v4, p1

    .line 625
    .line 626
    move v5, v8

    .line 627
    move v14, v8

    .line 628
    move-object v8, v11

    .line 629
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const/4 v1, 0x1

    .line 633
    goto/16 :goto_1b

    .line 634
    .line 635
    :cond_1f
    move v14, v8

    .line 636
    iget-object v2, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    .line 640
    .line 641
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 642
    .line 643
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    .line 644
    .line 645
    .line 646
    move-result v3

    .line 647
    const/high16 v4, 0x20000000

    .line 648
    .line 649
    and-int/2addr v3, v4

    .line 650
    if-eqz v3, :cond_28

    .line 651
    .line 652
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 653
    .line 654
    if-eqz v3, :cond_20

    .line 655
    .line 656
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    goto :goto_13

    .line 661
    :cond_20
    const/4 v3, 0x0

    .line 662
    :goto_13
    if-nez v3, :cond_28

    .line 663
    .line 664
    invoke-virtual {v1, v10}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    iget-object v4, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 673
    .line 674
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    if-eqz v5, :cond_27

    .line 683
    .line 684
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    check-cast v5, Lcom/android/internal/os/SomeArgs;

    .line 689
    .line 690
    iget-object v6, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 691
    .line 692
    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 693
    .line 694
    iget v7, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 695
    .line 696
    iget-object v8, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 697
    .line 698
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v8

    .line 702
    if-ne v10, v6, :cond_22

    .line 703
    .line 704
    goto/16 :goto_18

    .line 705
    .line 706
    :cond_22
    iget v11, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 707
    .line 708
    iget v12, v6, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 709
    .line 710
    if-ne v11, v12, :cond_21

    .line 711
    .line 712
    iget v11, v10, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 713
    .line 714
    iget v12, v6, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 715
    .line 716
    if-ne v11, v12, :cond_21

    .line 717
    .line 718
    iget-object v11, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 719
    .line 720
    iget-object v12, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 721
    .line 722
    invoke-virtual {v11, v12}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 723
    .line 724
    .line 725
    move-result v11

    .line 726
    if-eqz v11, :cond_21

    .line 727
    .line 728
    invoke-static {v4, v8}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    if-eqz v8, :cond_21

    .line 733
    .line 734
    iget v8, v6, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    .line 735
    .line 736
    if-nez v8, :cond_21

    .line 737
    .line 738
    iget-wide v11, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 739
    .line 740
    const-wide/16 v17, 0x0

    .line 741
    .line 742
    cmp-long v8, v11, v17

    .line 743
    .line 744
    if-gtz v8, :cond_21

    .line 745
    .line 746
    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    .line 747
    .line 748
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 749
    .line 750
    .line 751
    move-result v8

    .line 752
    if-lez v8, :cond_23

    .line 753
    .line 754
    iget-object v11, v10, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    .line 755
    .line 756
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v8

    .line 760
    check-cast v8, Ljava/lang/Boolean;

    .line 761
    .line 762
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 763
    .line 764
    .line 765
    move-result v8

    .line 766
    goto :goto_17

    .line 767
    :cond_23
    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 768
    .line 769
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 770
    .line 771
    .line 772
    move-result v8

    .line 773
    iget-object v11, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 774
    .line 775
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 776
    .line 777
    .line 778
    move-result v11

    .line 779
    if-ne v8, v11, :cond_24

    .line 780
    .line 781
    const/4 v8, 0x1

    .line 782
    goto :goto_14

    .line 783
    :cond_24
    const/4 v8, 0x0

    .line 784
    :goto_14
    if-eqz v8, :cond_26

    .line 785
    .line 786
    iget-object v11, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 787
    .line 788
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 789
    .line 790
    .line 791
    move-result v11

    .line 792
    const/4 v12, 0x1

    .line 793
    sub-int/2addr v11, v12

    .line 794
    :goto_15
    if-ltz v11, :cond_26

    .line 795
    .line 796
    iget-object v12, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 797
    .line 798
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v12

    .line 802
    iget-object v13, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 803
    .line 804
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v13

    .line 808
    invoke-static {v12, v13}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v12

    .line 812
    if-nez v12, :cond_25

    .line 813
    .line 814
    const/4 v8, 0x0

    .line 815
    goto :goto_16

    .line 816
    :cond_25
    add-int/lit8 v11, v11, -0x1

    .line 817
    .line 818
    goto :goto_15

    .line 819
    :cond_26
    :goto_16
    iget-object v11, v10, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    .line 820
    .line 821
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 822
    .line 823
    .line 824
    move-result-object v12

    .line 825
    invoke-virtual {v11, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    :goto_17
    if-eqz v8, :cond_21

    .line 829
    .line 830
    iput-object v10, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 831
    .line 832
    iput v14, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 833
    .line 834
    iget-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 835
    .line 836
    iput-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    .line 837
    .line 838
    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 839
    .line 840
    iput-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 841
    .line 842
    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 843
    .line 844
    iput-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 845
    .line 846
    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 847
    .line 848
    iput-wide v3, v10, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 849
    .line 850
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v1, v10, v14}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 854
    .line 855
    .line 856
    goto :goto_19

    .line 857
    :cond_27
    :goto_18
    const/4 v6, 0x0

    .line 858
    :goto_19
    if-eqz v6, :cond_28

    .line 859
    .line 860
    iget-boolean v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 861
    .line 862
    if-eqz v3, :cond_2a

    .line 863
    .line 864
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    .line 865
    .line 866
    .line 867
    move-result v3

    .line 868
    if-eqz v3, :cond_2a

    .line 869
    .line 870
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 871
    .line 872
    aget v3, v3, v14

    .line 873
    .line 874
    if-nez v3, :cond_2a

    .line 875
    .line 876
    invoke-interface {v2, v10, v14}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 877
    .line 878
    .line 879
    goto :goto_1a

    .line 880
    :cond_28
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    iput-object v10, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 885
    .line 886
    iput v14, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 887
    .line 888
    invoke-virtual {v1, v10}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    .line 889
    .line 890
    .line 891
    move-result-object v4

    .line 892
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1, v10, v14}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 896
    .line 897
    .line 898
    iget-boolean v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 899
    .line 900
    if-eqz v3, :cond_29

    .line 901
    .line 902
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    if-eqz v3, :cond_29

    .line 907
    .line 908
    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 909
    .line 910
    aget v3, v3, v14

    .line 911
    .line 912
    if-nez v3, :cond_29

    .line 913
    .line 914
    invoke-interface {v2, v10, v14}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 915
    .line 916
    .line 917
    :cond_29
    const/4 v6, 0x0

    .line 918
    :cond_2a
    :goto_1a
    if-eqz v6, :cond_2b

    .line 919
    .line 920
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    :cond_2b
    invoke-virtual {v9, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 927
    .line 928
    .line 929
    const/4 v1, 0x1

    .line 930
    const/16 v16, 0x1

    .line 931
    .line 932
    :goto_1b
    add-int/lit8 v8, v14, 0x1

    .line 933
    .line 934
    move v11, v1

    .line 935
    move/from16 v12, v21

    .line 936
    .line 937
    const/4 v13, 0x0

    .line 938
    const/4 v14, 0x0

    .line 939
    goto/16 :goto_9

    .line 940
    .line 941
    :cond_2c
    move/from16 v21, v12

    .line 942
    .line 943
    const/4 v1, 0x0

    .line 944
    :goto_1c
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 945
    .line 946
    .line 947
    move-result v2

    .line 948
    if-ge v1, v2, :cond_2f

    .line 949
    .line 950
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 955
    .line 956
    const/4 v3, 0x0

    .line 957
    :goto_1d
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 958
    .line 959
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 960
    .line 961
    .line 962
    move-result v4

    .line 963
    if-ge v3, v4, :cond_2e

    .line 964
    .line 965
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 966
    .line 967
    aget v4, v4, v3

    .line 968
    .line 969
    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 970
    .line 971
    .line 972
    move-result v4

    .line 973
    if-nez v4, :cond_2d

    .line 974
    .line 975
    iget-object v4, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 976
    .line 977
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 978
    .line 979
    .line 980
    :cond_2d
    const/4 v4, 0x1

    .line 981
    add-int/2addr v3, v4

    .line 982
    goto :goto_1d

    .line 983
    :cond_2e
    const/4 v4, 0x1

    .line 984
    add-int/2addr v1, v4

    .line 985
    goto :goto_1c

    .line 986
    :cond_2f
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 987
    .line 988
    .line 989
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 990
    .line 991
    const/4 v2, 0x0

    .line 992
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    invoke-virtual {v15}, Landroid/util/ArrayMap;->clear()V

    .line 996
    .line 997
    .line 998
    iput-object v2, v10, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    .line 999
    .line 1000
    iget-object v0, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1001
    .line 1002
    invoke-virtual {v0, v2, v15}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 1006
    .line 1007
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    if-nez v0, :cond_30

    .line 1012
    .line 1013
    if-nez v16, :cond_31

    .line 1014
    .line 1015
    :cond_30
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    .line 1019
    .line 1020
    .line 1021
    :cond_31
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1022
    .line 1023
    .line 1024
    return-void

    .line 1025
    :catchall_1
    move-exception v0

    .line 1026
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1027
    throw v0
.end method

.method public final enqueueDelayedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/16 v0, 0x9

    .line 9
    .line 10
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-wide/16 v0, 0x3e8

    .line 15
    .line 16
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final enqueueUpdateRunningList()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "isActive"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/am/Flags;->avoidRepeatedBcastReEnqueues()Z

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    const-string/jumbo v1, "re-enqueued broadcast delivery failed"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 35
    .line 36
    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const/4 v8, 0x0

    .line 43
    const-string/jumbo v9, "reEnqueueActiveBroadcast"

    .line 44
    .line 45
    .line 46
    move-object v2, p0

    .line 47
    move-object v3, p1

    .line 48
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object p0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 64
    .line 65
    iput v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p2, "Ignoring finishReceiverActiveLocked; no active broadcast for "

    .line 10
    .line 11
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string/jumbo v0, "finishReceiver"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v9, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget-object v1, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    move-object v1, p0

    .line 49
    move-object v2, p1

    .line 50
    move-object v3, v9

    .line 51
    move-object v4, v10

    .line 52
    move-object v6, v11

    .line 53
    move v7, p2

    .line 54
    move-object v8, p3

    .line 55
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p3, 0x3

    .line 59
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueModernImpl$BroadcastAnrTimer;

    .line 60
    .line 61
    if-ne p2, p3, :cond_4

    .line 62
    .line 63
    iget p2, v10, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 64
    .line 65
    add-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    iput p2, v10, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 68
    .line 69
    if-eqz v9, :cond_3

    .line 70
    .line 71
    iget-boolean p2, v9, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 72
    .line 73
    if-nez p2, :cond_3

    .line 74
    .line 75
    iget-object p2, v1, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {v11}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    instance-of p3, v11, Lcom/android/server/am/BroadcastFilter;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz p3, :cond_2

    .line 88
    .line 89
    check-cast v11, Lcom/android/server/am/BroadcastFilter;

    .line 90
    .line 91
    iget-object p3, v11, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz p3, :cond_1

    .line 94
    .line 95
    const/16 v2, 0x40

    .line 96
    .line 97
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-lez p3, :cond_1

    .line 102
    .line 103
    iget-object v2, v11, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-virtual {v2, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    move-object p3, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 114
    .line 115
    iget-object p3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 116
    .line 117
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 118
    .line 119
    :goto_0
    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 120
    .line 121
    invoke-static {v2, p2, p3}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2, v1}, Lcom/android/internal/os/TimeoutRecord;->setExpiredTimer(Ljava/lang/AutoCloseable;)Lcom/android/internal/os/TimeoutRecord;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 130
    .line 131
    iget-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 132
    .line 133
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    .line 134
    .line 135
    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/utils/AnrTimer;->discard()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    .line 144
    .line 145
    if-eqz p2, :cond_5

    .line 146
    .line 147
    invoke-virtual {v1, p1}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object p2, v1, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 156
    .line 157
    const/16 p3, 0x8

    .line 158
    .line 159
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_6

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 171
    .line 172
    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    .line 173
    .line 174
    const/4 p2, 0x0

    .line 175
    invoke-direct {p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 179
    .line 180
    .line 181
    :cond_6
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_7

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-boolean v3, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iput p2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 29
    .line 30
    iput-object p3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 33
    .line 34
    iget-object p2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/high16 p3, 0x8000000

    .line 41
    .line 42
    and-int/2addr p2, p3

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput-boolean p5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 47
    .line 48
    :cond_2
    :goto_0
    const-string/jumbo p2, "remote app"

    .line 49
    .line 50
    .line 51
    const/4 p3, 0x1

    .line 52
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean p2, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    add-int/2addr v2, p3

    .line 60
    move p2, v2

    .line 61
    :goto_1
    iget-object p4, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    if-ge p2, p4, :cond_3

    .line 68
    .line 69
    iget-object p4, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v8, 0x2

    .line 78
    const-string/jumbo v9, "resultAbort"

    .line 79
    .line 80
    .line 81
    move-object v2, p0

    .line 82
    move-object v5, v1

    .line 83
    move v6, p2

    .line 84
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 p2, p2, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 91
    .line 92
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    .line 98
    .line 99
    iget-object p4, p2, Lcom/android/server/am/BroadcastHistory;->mAbortedBroadcastHistory:[Ljava/lang/String;

    .line 100
    .line 101
    iget p5, p2, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    .line 102
    .line 103
    new-instance v2, Ljava/io/CharArrayWriter;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v3, Ljava/io/PrintWriter;

    .line 109
    .line 110
    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 111
    .line 112
    .line 113
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 114
    .line 115
    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 116
    .line 117
    .line 118
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    aput-object v1, p4, p5

    .line 129
    .line 130
    iget p4, p2, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    .line 131
    .line 132
    sget p5, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    .line 133
    .line 134
    invoke-static {p4, p3, p5}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    .line 135
    .line 136
    .line 137
    move-result p4

    .line 138
    iput p4, p2, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    .line 139
    .line 140
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_5

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 147
    .line 148
    .line 149
    return p3

    .line 150
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 151
    .line 152
    .line 153
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    return p3

    .line 163
    :cond_6
    return v0

    .line 164
    :catch_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 168
    .line 169
    .line 170
    return p3

    .line 171
    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string p2, "Ignoring finishReceiverLocked; no active broadcast for "

    .line 174
    .line 175
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return v0
.end method

.method public final forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    .line 19
    .line 20
    :goto_1
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3, p2, p3, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 35
    .line 36
    .line 37
    move v2, v1

    .line 38
    :cond_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 47
    .line 48
    .line 49
    :cond_3
    return v2
.end method

.method public final forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    .line 19
    .line 20
    :goto_1
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 32
    .line 33
    .line 34
    move v2, v1

    .line 35
    :cond_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public getOrCreateProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;-><init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V

    .line 6
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 7
    invoke-virtual {v2, p2, p1}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    if-nez v0, :cond_3

    .line 9
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_3
    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    :goto_2
    return-object v1
.end method

.method public getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method public final getRunningSize()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_1

    .line 7
    .line 8
    aget-object v2, v2, v0

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v1
.end method

.method public final handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 22
    .line 23
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 24
    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_0
    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge v2, v3, :cond_1

    .line 44
    .line 45
    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 52
    .line 53
    iget-object v4, p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, v1, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    :goto_1
    iget-object p1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 72
    .line 73
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 77
    .line 78
    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 14
    .line 15
    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v3, v4

    .line 19
    :goto_0
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 25
    .line 26
    :goto_1
    const/4 v5, 0x0

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 30
    .line 31
    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 32
    .line 33
    const/16 v7, 0x4a

    .line 34
    .line 35
    invoke-virtual {v2, v7, v6, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, v1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 47
    .line 48
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 55
    .line 56
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    .line 57
    .line 58
    iget-object v3, v2, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/content/Intent;->canStripForHistory()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    move-object v3, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    new-instance v3, Lcom/android/server/am/BroadcastRecord;

    .line 74
    .line 75
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 76
    .line 77
    invoke-virtual {v6}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-direct {v3, v1, v6}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    iget v6, v2, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 85
    .line 86
    iget-object v7, v2, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 87
    .line 88
    aput-object v3, v7, v6

    .line 89
    .line 90
    iget v7, v2, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    .line 91
    .line 92
    const/4 v8, 0x1

    .line 93
    invoke-static {v6, v8, v7}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    iput v6, v2, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 98
    .line 99
    iget-object v6, v2, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 100
    .line 101
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget v6, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 107
    .line 108
    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 109
    .line 110
    invoke-virtual {v7, v8, v8, v8, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    iget-object v9, v2, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    .line 115
    .line 116
    aput-object v7, v9, v6

    .line 117
    .line 118
    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 119
    .line 120
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    .line 125
    .line 126
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_4

    .line 131
    .line 132
    iget-object v6, v2, Lcom/android/server/am/BroadcastHistory;->mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

    .line 133
    .line 134
    if-nez v6, :cond_4

    .line 135
    .line 136
    new-instance v6, Ljava/lang/ref/SoftReference;

    .line 137
    .line 138
    new-instance v9, Ljava/io/CharArrayWriter;

    .line 139
    .line 140
    invoke-direct {v9}, Ljava/io/CharArrayWriter;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v10, Ljava/io/PrintWriter;

    .line 144
    .line 145
    invoke-direct {v10, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 146
    .line 147
    .line 148
    new-instance v11, Ljava/text/SimpleDateFormat;

    .line 149
    .line 150
    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 151
    .line 152
    .line 153
    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v10, v11}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-direct {v6, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iput-object v6, v2, Lcom/android/server/am/BroadcastHistory;->mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

    .line 167
    .line 168
    :cond_4
    iget v6, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 169
    .line 170
    iget-wide v9, v3, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 171
    .line 172
    iget-object v11, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    .line 173
    .line 174
    aput-wide v9, v11, v6

    .line 175
    .line 176
    iget-object v9, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    .line 177
    .line 178
    iget-wide v10, v3, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 179
    .line 180
    aput-wide v10, v9, v6

    .line 181
    .line 182
    iget-object v3, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    .line 183
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v9

    .line 188
    aput-wide v9, v3, v6

    .line 189
    .line 190
    iget v3, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 191
    .line 192
    iget v6, v2, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 193
    .line 194
    invoke-static {v3, v8, v6}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    iput v3, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 199
    .line 200
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 201
    .line 202
    if-eqz v2, :cond_5

    .line 203
    .line 204
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    goto :goto_3

    .line 209
    :cond_5
    move v2, v5

    .line 210
    :goto_3
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 211
    .line 212
    if-ge v3, v2, :cond_6

    .line 213
    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_6
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 217
    .line 218
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    const-string v9, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 223
    .line 224
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-eqz v9, :cond_7

    .line 229
    .line 230
    move v10, v8

    .line 231
    goto :goto_4

    .line 232
    :cond_7
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-eqz v7, :cond_8

    .line 237
    .line 238
    const/4 v10, 0x2

    .line 239
    goto :goto_4

    .line 240
    :cond_8
    move v10, v5

    .line 241
    :goto_4
    if-eqz v10, :cond_c

    .line 242
    .line 243
    iget-wide v11, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 244
    .line 245
    iget-wide v13, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 246
    .line 247
    sub-long/2addr v11, v13

    .line 248
    long-to-int v11, v11

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 250
    .line 251
    .line 252
    move-result-wide v12

    .line 253
    iget-wide v14, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 254
    .line 255
    sub-long/2addr v12, v14

    .line 256
    long-to-int v12, v12

    .line 257
    iget-wide v13, v1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 258
    .line 259
    iget-wide v6, v1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 260
    .line 261
    sub-long/2addr v13, v6

    .line 262
    long-to-int v13, v13

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 264
    .line 265
    .line 266
    move-result-wide v6

    .line 267
    iget-wide v14, v1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 268
    .line 269
    sub-long/2addr v6, v14

    .line 270
    long-to-int v14, v6

    .line 271
    const-class v6, Lcom/android/server/pm/UserManagerInternal;

    .line 272
    .line 273
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    check-cast v6, Lcom/android/server/pm/UserManagerInternal;

    .line 278
    .line 279
    if-eqz v6, :cond_9

    .line 280
    .line 281
    iget v7, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 282
    .line 283
    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    goto :goto_5

    .line 288
    :cond_9
    move-object v6, v4

    .line 289
    :goto_5
    if-eqz v6, :cond_a

    .line 290
    .line 291
    iget-object v7, v6, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v7}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    move/from16 v16, v7

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_a
    move/from16 v16, v5

    .line 301
    .line 302
    :goto_6
    const-string v7, "BOOT_COMPLETED_BROADCAST_COMPLETION_LATENCY_REPORTED action:"

    .line 303
    .line 304
    const-string v9, " dispatchLatency:"

    .line 305
    .line 306
    const-string v15, " completeLatency:"

    .line 307
    .line 308
    invoke-static {v11, v7, v3, v9, v15}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    const-string v7, " dispatchRealLatency:"

    .line 313
    .line 314
    const-string v9, " completeRealLatency:"

    .line 315
    .line 316
    invoke-static {v12, v13, v7, v9, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 317
    .line 318
    .line 319
    const-string v7, " receiversSize:"

    .line 320
    .line 321
    const-string v9, " userId:"

    .line 322
    .line 323
    invoke-static {v14, v2, v7, v9, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 324
    .line 325
    .line 326
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 327
    .line 328
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v2, " userType:"

    .line 332
    .line 333
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    if-eqz v6, :cond_b

    .line 337
    .line 338
    iget-object v4, v6, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 339
    .line 340
    :cond_b
    const-string v2, "BroadcastQueue"

    .line 341
    .line 342
    invoke-static {v3, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const/16 v9, 0x1b5

    .line 346
    .line 347
    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 348
    .line 349
    invoke-static/range {v9 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIII)V

    .line 350
    .line 351
    .line 352
    :cond_c
    :goto_7
    iget-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->mCounted:Z

    .line 353
    .line 354
    if-eqz v2, :cond_13

    .line 355
    .line 356
    iput-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->mCounted:Z

    .line 357
    .line 358
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 359
    .line 360
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 361
    .line 362
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 363
    .line 364
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    if-eqz v3, :cond_d

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_d
    const-string v3, "android"

    .line 373
    .line 374
    :goto_8
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    check-cast v2, Landroid/util/ArrayMap;

    .line 381
    .line 382
    if-nez v2, :cond_e

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_e
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-eqz v4, :cond_f

    .line 394
    .line 395
    const-string v3, "EMPTY_ACTION"

    .line 396
    .line 397
    :cond_f
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    check-cast v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    .line 402
    .line 403
    if-nez v4, :cond_10

    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_10
    iget v6, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    .line 407
    .line 408
    iget v7, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 409
    .line 410
    if-ge v6, v7, :cond_11

    .line 411
    .line 412
    iput v7, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    .line 413
    .line 414
    :cond_11
    sub-int/2addr v7, v8

    .line 415
    iput v7, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 416
    .line 417
    if-gez v7, :cond_12

    .line 418
    .line 419
    iput v5, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 420
    .line 421
    :cond_12
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    :cond_13
    :goto_9
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 425
    .line 426
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    if-nez v2, :cond_17

    .line 431
    .line 432
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 433
    .line 434
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    if-nez v2, :cond_17

    .line 439
    .line 440
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 441
    .line 442
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    const/high16 v3, 0x40000000    # 2.0f

    .line 447
    .line 448
    and-int/2addr v2, v3

    .line 449
    if-nez v2, :cond_17

    .line 450
    .line 451
    move v7, v5

    .line 452
    move v8, v7

    .line 453
    :goto_a
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 454
    .line 455
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-ge v5, v2, :cond_16

    .line 460
    .line 461
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 462
    .line 463
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    instance-of v2, v2, Landroid/content/pm/ResolveInfo;

    .line 468
    .line 469
    if-eqz v2, :cond_14

    .line 470
    .line 471
    add-int/lit8 v7, v7, 0x1

    .line 472
    .line 473
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 474
    .line 475
    aget v2, v2, v5

    .line 476
    .line 477
    const/4 v3, 0x2

    .line 478
    if-ne v2, v3, :cond_15

    .line 479
    .line 480
    add-int/lit8 v8, v8, 0x1

    .line 481
    .line 482
    goto :goto_b

    .line 483
    :cond_14
    const/4 v3, 0x2

    .line 484
    :cond_15
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 488
    .line 489
    .line 490
    move-result-wide v2

    .line 491
    iget-wide v4, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 492
    .line 493
    sub-long v11, v2, v4

    .line 494
    .line 495
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 496
    .line 497
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 498
    .line 499
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v9

    .line 503
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(IILjava/lang/String;Ljava/lang/String;J)V

    .line 506
    .line 507
    .line 508
    :cond_17
    return-void
.end method

.method public final notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5
    .line 6
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    iget-wide v1, p3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 11
    .line 12
    iget-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 13
    .line 14
    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    if-nez p3, :cond_2

    .line 39
    .line 40
    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 41
    .line 42
    const/4 p3, -0x1

    .line 43
    if-ne p1, p3, :cond_1

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p3, "If sending to USER ALL, that is not explicit broadcast ["

    .line 48
    .line 49
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p3, "]"

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p3, "BroadcastQueue"

    .line 65
    .line 66
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 73
    .line 74
    iget p3, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 75
    .line 76
    const/16 v1, 0x1f

    .line 77
    .line 78
    invoke-virtual {p1, p3, v1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 82
    .line 83
    const/4 p3, 0x3

    .line 84
    invoke-virtual {p1, v0, p3}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 90
    .line 91
    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 92
    .line 93
    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p0, p1, v0, p3, p2}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 6
    .line 7
    iget v1, v0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    iput v1, v0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 16
    .line 17
    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x28

    .line 24
    .line 25
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 49
    .line 50
    const/16 v1, 0xb

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-wide/16 v2, 0x40

    .line 40
    .line 41
    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    goto :goto_2

    .line 64
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    const/4 p0, 0x0

    .line 72
    :goto_2
    return p0
.end method

.method public final onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 13
    .line 14
    if-ne v3, p1, :cond_0

    .line 15
    .line 16
    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-wide/16 v4, 0x40

    .line 23
    .line 24
    invoke-static {v4, v5, v3, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 35
    .line 36
    if-ne v1, p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastQueueModernImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x5

    .line 48
    const-string/jumbo v1, "onApplicationCleanupLocked"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-direct {p1, v1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method public removeProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v3, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    .line 4
    iget-object p0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p0, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    .line 5
    :cond_0
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    return-object v0

    .line 8
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    move-wide v10, v5

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide v10, v3

    .line 18
    :goto_0
    cmp-long v2, v10, v3

    .line 19
    .line 20
    if-gtz v2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_1
    move-object v12, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v2, 0x0

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    if-nez v12, :cond_4

    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 66
    .line 67
    iget v9, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 68
    .line 69
    iget v1, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 70
    .line 71
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v13

    .line 79
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 80
    .line 81
    move-object/from16 v3, p1

    .line 82
    .line 83
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    check-cast v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 92
    .line 93
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 94
    .line 95
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 96
    .line 97
    iget-object v15, v2, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    .line 98
    .line 99
    iget-object v8, v15, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v8

    .line 102
    :try_start_0
    sget-boolean v3, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    const-string v7, "ResponseStatsTracker"

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-static {v13, v14}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    invoke-static {v0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    move-object v3, v4

    .line 133
    move-object v4, v5

    .line 134
    move-object v5, v12

    .line 135
    move-object/from16 p0, v2

    .line 136
    .line 137
    move-object v2, v7

    .line 138
    move-object/from16 v7, v16

    .line 139
    .line 140
    move-object/from16 v16, v8

    .line 141
    .line 142
    move-object/from16 v8, v17

    .line 143
    .line 144
    :try_start_1
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string/jumbo v4, "broadcast:%s; srcUid=%d, tgtPkg=%s, tgtUsr=%d, id=%d, state=%s"

    .line 149
    .line 150
    .line 151
    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    goto/16 :goto_7

    .line 161
    .line 162
    :catchall_1
    move-exception v0

    .line 163
    move-object/from16 v16, v8

    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_5
    move-object/from16 p0, v2

    .line 168
    .line 169
    move-object/from16 v16, v8

    .line 170
    .line 171
    :goto_3
    iget-object v2, v15, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 178
    .line 179
    if-nez v2, :cond_6

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    invoke-interface {v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    .line 183
    .line 184
    .line 185
    check-cast v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    .line 186
    .line 187
    iput v9, v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->sourceUid:I

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    iput v3, v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUserId:I

    .line 194
    .line 195
    iput v0, v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUidProcessState:I

    .line 196
    .line 197
    iput-object v12, v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    .line 198
    .line 199
    iput-wide v10, v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->idForResponseEvent:J

    .line 200
    .line 201
    iput-wide v13, v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->timestampMs:J

    .line 202
    .line 203
    :goto_4
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    move-object/from16 v2, p0

    .line 205
    .line 206
    iget-object v3, v2, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 207
    .line 208
    invoke-interface {v3}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseFgThresholdState()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-gt v0, v3, :cond_7

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_7
    invoke-virtual {v2, v12, v1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_8
    invoke-virtual {v2, v12, v1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_9

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_9
    iget-object v3, v2, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 230
    .line 231
    monitor-enter v3

    .line 232
    :try_start_2
    invoke-virtual {v2, v12, v1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    new-instance v4, Lcom/android/server/usage/BroadcastEvent;

    .line 241
    .line 242
    move-object v7, v4

    .line 243
    move v8, v9

    .line 244
    move v9, v1

    .line 245
    invoke-direct/range {v7 .. v12}, Lcom/android/server/usage/BroadcastEvent;-><init>(IIJLjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-ltz v1, :cond_a

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    move-object v4, v0

    .line 259
    check-cast v4, Lcom/android/server/usage/BroadcastEvent;

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_a
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    :goto_5
    iget-object v0, v4, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    .line 266
    .line 267
    invoke-virtual {v0, v13, v14}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    .line 271
    .line 272
    .line 273
    monitor-exit v3

    .line 274
    :goto_6
    return-void

    .line 275
    :catchall_2
    move-exception v0

    .line 276
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 277
    throw v0

    .line 278
    :goto_7
    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    throw v0
.end method

.method public final scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 32

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string/jumbo v1, "isActive"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "scheduleReceiverWarmLocked"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v11

    .line 22
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v12, 0x1

    .line 27
    if-eqz v0, :cond_1c

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v13

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget v0, v13, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, v13, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, v13, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    iput-wide v0, v13, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 58
    .line 59
    :cond_0
    invoke-virtual {v9, v10, v13, v5}, Lcom/android/server/am/BroadcastQueueModernImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_1a

    .line 64
    .line 65
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 66
    .line 67
    const/4 v14, 0x0

    .line 68
    if-eqz v0, :cond_9

    .line 69
    .line 70
    iget-object v0, v13, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    instance-of v1, v0, Landroid/content/pm/ResolveInfo;

    .line 77
    .line 78
    if-eqz v1, :cond_9

    .line 79
    .line 80
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 81
    .line 82
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 83
    .line 84
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 85
    .line 86
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v2, v13, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 91
    .line 92
    iget v3, v13, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-nez v2, :cond_2

    .line 106
    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_2
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 110
    .line 111
    monitor-enter v4

    .line 112
    :try_start_0
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 113
    .line 114
    invoke-static {v6, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-eqz v6, :cond_8

    .line 119
    .line 120
    const-string v7, "android.appwidget.action.APPWIDGET_ENABLED"

    .line 121
    .line 122
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_3

    .line 127
    .line 128
    invoke-virtual {v1, v6, v14}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    .line 129
    .line 130
    .line 131
    sget-object v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    .line 132
    .line 133
    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetEnabled(ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    goto :goto_4

    .line 139
    :cond_3
    const-string v7, "android.appwidget.action.APPWIDGET_DISABLED"

    .line 140
    .line 141
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_4

    .line 146
    .line 147
    sget-object v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    .line 148
    .line 149
    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetDisabled(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_4
    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 154
    .line 155
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_5

    .line 160
    .line 161
    invoke-virtual {v1, v6, v14}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    const-string v7, "android.app.action.DEVICE_ADMIN_ENABLED"

    .line 166
    .line 167
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_6

    .line 172
    .line 173
    invoke-virtual {v1, v6, v14}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    .line 174
    .line 175
    .line 176
    sget-object v1, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    .line 177
    .line 178
    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->onDeviceAdminEnabled(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_8

    .line 189
    .line 190
    sget-object v1, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    .line 191
    .line 192
    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    .line 193
    .line 194
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    iget-object v6, v1, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    .line 196
    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Ljava/util/ArrayList;

    .line 206
    .line 207
    if-eqz v6, :cond_7

    .line 208
    .line 209
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-eqz v7, :cond_7

    .line 214
    .line 215
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    iget-object v0, v1, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    .line 219
    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catchall_1
    move-exception v0

    .line 229
    goto :goto_2

    .line 230
    :cond_7
    :goto_1
    monitor-exit v2

    .line 231
    goto :goto_3

    .line 232
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :try_start_2
    throw v0

    .line 234
    :cond_8
    :goto_3
    monitor-exit v4

    .line 235
    goto :goto_5

    .line 236
    :goto_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    throw v0

    .line 238
    :cond_9
    :goto_5
    iget-object v15, v10, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 239
    .line 240
    iget-object v0, v13, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 241
    .line 242
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    iget-object v0, v13, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 247
    .line 248
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    instance-of v0, v0, Lcom/android/server/am/BroadcastFilter;

    .line 253
    .line 254
    if-eqz v0, :cond_a

    .line 255
    .line 256
    iget-boolean v0, v13, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 257
    .line 258
    if-nez v0, :cond_a

    .line 259
    .line 260
    iget-object v0, v13, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 261
    .line 262
    if-nez v0, :cond_a

    .line 263
    .line 264
    move v0, v12

    .line 265
    goto :goto_6

    .line 266
    :cond_a
    move v0, v14

    .line 267
    :goto_6
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 268
    .line 269
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    .line 270
    .line 271
    const/16 v7, 0x8

    .line 272
    .line 273
    if-eqz v1, :cond_c

    .line 274
    .line 275
    iget-boolean v1, v13, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 276
    .line 277
    if-nez v1, :cond_c

    .line 278
    .line 279
    if-nez v0, :cond_c

    .line 280
    .line 281
    iput-boolean v12, v10, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    .line 282
    .line 283
    invoke-virtual {v13}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_b

    .line 288
    .line 289
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 290
    .line 291
    iget-wide v1, v1, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_b
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 295
    .line 296
    iget-wide v1, v1, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 297
    .line 298
    :goto_7
    long-to-int v1, v1

    .line 299
    iget-object v2, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueModernImpl$BroadcastAnrTimer;

    .line 300
    .line 301
    iget-object v2, v2, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    iget-object v2, v10, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 307
    .line 308
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 309
    .line 310
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 311
    .line 312
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 313
    .line 314
    iget-object v3, v3, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 315
    .line 316
    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v2

    .line 320
    iput-wide v2, v10, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    .line 321
    .line 322
    iget-object v2, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 323
    .line 324
    invoke-static {v2, v7, v1, v14, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    move-object/from16 v16, v8

    .line 329
    .line 330
    int-to-long v7, v1

    .line 331
    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 332
    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_c
    move-object/from16 v16, v8

    .line 336
    .line 337
    iput-boolean v14, v10, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    .line 338
    .line 339
    :goto_8
    iget-object v1, v13, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 340
    .line 341
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    const/4 v2, 0x3

    .line 346
    if-eqz v1, :cond_e

    .line 347
    .line 348
    iget-object v1, v13, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 349
    .line 350
    invoke-virtual {v15, v13, v1}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v13}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_d

    .line 358
    .line 359
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 360
    .line 361
    iget-wide v3, v1, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_d
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 365
    .line 366
    iget-wide v3, v1, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 367
    .line 368
    :goto_9
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    iput-object v15, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 373
    .line 374
    iput-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 375
    .line 376
    iget-object v6, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 377
    .line 378
    invoke-static {v6, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v6, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 383
    .line 384
    .line 385
    :cond_e
    iget-object v1, v13, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 386
    .line 387
    if-eqz v1, :cond_10

    .line 388
    .line 389
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    .line 390
    .line 391
    .line 392
    move-result-wide v3

    .line 393
    const-wide/16 v6, 0x0

    .line 394
    .line 395
    cmp-long v1, v3, v6

    .line 396
    .line 397
    if-lez v1, :cond_10

    .line 398
    .line 399
    iget-object v1, v13, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 400
    .line 401
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    const/4 v3, 0x4

    .line 406
    if-ne v1, v3, :cond_f

    .line 407
    .line 408
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 409
    .line 410
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 411
    .line 412
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 413
    .line 414
    iget-object v3, v13, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 415
    .line 416
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    .line 417
    .line 418
    .line 419
    move-result-wide v3

    .line 420
    invoke-virtual {v1, v2, v3, v4, v15}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V

    .line 421
    .line 422
    .line 423
    goto :goto_a

    .line 424
    :cond_f
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 425
    .line 426
    iget v2, v10, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 427
    .line 428
    iget-object v3, v13, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 429
    .line 430
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    .line 431
    .line 432
    .line 433
    move-result-wide v23

    .line 434
    iget-object v3, v13, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 435
    .line 436
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    .line 437
    .line 438
    .line 439
    move-result v20

    .line 440
    invoke-virtual {v13}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v21

    .line 444
    iget-object v3, v13, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 445
    .line 446
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    .line 447
    .line 448
    .line 449
    move-result v22

    .line 450
    iget v3, v13, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 451
    .line 452
    move-object/from16 v18, v1

    .line 453
    .line 454
    move/from16 v19, v2

    .line 455
    .line 456
    move/from16 v25, v3

    .line 457
    .line 458
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IILjava/lang/String;IJI)V

    .line 459
    .line 460
    .line 461
    :cond_10
    :goto_a
    const/4 v7, 0x4

    .line 462
    const-string/jumbo v8, "scheduleReceiverWarmLocked"

    .line 463
    .line 464
    .line 465
    move-object/from16 v1, p0

    .line 466
    .line 467
    move-object/from16 v2, p1

    .line 468
    .line 469
    move-object v3, v15

    .line 470
    move-object v4, v13

    .line 471
    move-object/from16 v6, v16

    .line 472
    .line 473
    move-object/from16 v14, v16

    .line 474
    .line 475
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v13, v14}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 483
    .line 484
    if-eqz v2, :cond_19

    .line 485
    .line 486
    :try_start_3
    iget-boolean v4, v13, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 487
    .line 488
    if-eqz v4, :cond_11

    .line 489
    .line 490
    iget-object v4, v9, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 491
    .line 492
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 493
    .line 494
    iget v5, v13, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 495
    .line 496
    iget-object v6, v13, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 497
    .line 498
    iget v7, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 499
    .line 500
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 501
    .line 502
    .line 503
    move-result v19

    .line 504
    iget v7, v13, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 505
    .line 506
    move-object/from16 v16, v4

    .line 507
    .line 508
    check-cast v16, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 509
    .line 510
    const/16 v22, 0x0

    .line 511
    .line 512
    const/16 v21, 0x1

    .line 513
    .line 514
    move/from16 v17, v5

    .line 515
    .line 516
    move-object/from16 v18, v6

    .line 517
    .line 518
    move/from16 v20, v7

    .line 519
    .line 520
    invoke-virtual/range {v16 .. v22}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 521
    .line 522
    .line 523
    goto :goto_c

    .line 524
    :goto_b
    move/from16 v29, v11

    .line 525
    .line 526
    move-object/from16 v31, v14

    .line 527
    .line 528
    move-object v3, v15

    .line 529
    goto/16 :goto_13

    .line 530
    .line 531
    :catch_0
    move-exception v0

    .line 532
    goto :goto_b

    .line 533
    :cond_11
    :goto_c
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 534
    .line 535
    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 536
    .line 537
    iput v4, v10, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    .line 538
    .line 539
    instance-of v4, v14, Lcom/android/server/am/BroadcastFilter;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 540
    .line 541
    if-eqz v4, :cond_14

    .line 542
    .line 543
    :try_start_4
    move-object v8, v14

    .line 544
    check-cast v8, Lcom/android/server/am/BroadcastFilter;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_5

    .line 545
    .line 546
    :try_start_5
    invoke-virtual {v9, v15, v13}, Lcom/android/server/am/BroadcastQueueModernImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_5} :catch_6

    .line 547
    .line 548
    .line 549
    :try_start_6
    move-object v8, v14

    .line 550
    check-cast v8, Lcom/android/server/am/BroadcastFilter;

    .line 551
    .line 552
    iget-object v4, v8, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 553
    .line 554
    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    .line 555
    .line 556
    iget v7, v13, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 557
    .line 558
    iget-object v8, v13, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 559
    .line 560
    iget-object v5, v13, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 561
    .line 562
    iget-boolean v6, v13, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 563
    .line 564
    iget-boolean v3, v13, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 565
    .line 566
    iget v12, v13, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_5

    .line 567
    .line 568
    move/from16 v29, v11

    .line 569
    .line 570
    :try_start_7
    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/BadParcelableException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_7 .. :try_end_7} :catch_4

    .line 571
    .line 572
    :try_start_8
    iget v11, v11, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/BadParcelableException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_8 .. :try_end_8} :catch_3

    .line 573
    .line 574
    move-object/from16 v30, v15

    .line 575
    .line 576
    :try_start_9
    iget-boolean v15, v13, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/os/BadParcelableException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 577
    .line 578
    if-eqz v15, :cond_12

    .line 579
    .line 580
    move-object/from16 v31, v14

    .line 581
    .line 582
    :try_start_a
    iget v14, v13, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 583
    .line 584
    move/from16 v27, v14

    .line 585
    .line 586
    goto :goto_e

    .line 587
    :catch_1
    move-exception v0

    .line 588
    :goto_d
    move-object/from16 v3, v30

    .line 589
    .line 590
    goto/16 :goto_13

    .line 591
    .line 592
    :cond_12
    move-object/from16 v31, v14

    .line 593
    .line 594
    const/16 v27, -0x1

    .line 595
    .line 596
    :goto_e
    if-eqz v15, :cond_13

    .line 597
    .line 598
    iget-object v14, v13, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 599
    .line 600
    move-object/from16 v28, v14

    .line 601
    .line 602
    goto :goto_f

    .line 603
    :cond_13
    const/16 v28, 0x0

    .line 604
    .line 605
    :goto_f
    move-object/from16 v16, v2

    .line 606
    .line 607
    move-object/from16 v17, v4

    .line 608
    .line 609
    move-object/from16 v18, v1

    .line 610
    .line 611
    move/from16 v19, v7

    .line 612
    .line 613
    move-object/from16 v20, v8

    .line 614
    .line 615
    move-object/from16 v21, v5

    .line 616
    .line 617
    move/from16 v22, v6

    .line 618
    .line 619
    move/from16 v23, v3

    .line 620
    .line 621
    move/from16 v24, v0

    .line 622
    .line 623
    move/from16 v25, v12

    .line 624
    .line 625
    move/from16 v26, v11

    .line 626
    .line 627
    invoke-interface/range {v16 .. v28}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    .line 628
    .line 629
    .line 630
    if-eqz v0, :cond_17

    .line 631
    .line 632
    const-string v0, "assuming delivered"

    .line 633
    .line 634
    const/4 v2, 0x1

    .line 635
    invoke-virtual {v9, v10, v2, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 636
    .line 637
    .line 638
    goto/16 :goto_14

    .line 639
    .line 640
    :catch_2
    move-exception v0

    .line 641
    move-object/from16 v31, v14

    .line 642
    .line 643
    goto :goto_d

    .line 644
    :catch_3
    move-exception v0

    .line 645
    goto :goto_10

    .line 646
    :catch_4
    move-exception v0

    .line 647
    :goto_10
    move-object/from16 v31, v14

    .line 648
    .line 649
    move-object/from16 v30, v15

    .line 650
    .line 651
    goto :goto_d

    .line 652
    :catch_5
    move-exception v0

    .line 653
    move/from16 v29, v11

    .line 654
    .line 655
    goto :goto_10

    .line 656
    :catch_6
    move-exception v0

    .line 657
    move/from16 v29, v11

    .line 658
    .line 659
    goto :goto_10

    .line 660
    :cond_14
    move/from16 v29, v11

    .line 661
    .line 662
    move-object/from16 v31, v14

    .line 663
    .line 664
    move-object/from16 v30, v15

    .line 665
    .line 666
    move-object/from16 v8, v31

    .line 667
    .line 668
    check-cast v8, Landroid/content/pm/ResolveInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_a .. :try_end_a} :catch_1

    .line 669
    .line 670
    move-object/from16 v3, v30

    .line 671
    .line 672
    :try_start_b
    invoke-virtual {v9, v3, v13, v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V

    .line 673
    .line 674
    .line 675
    move-object/from16 v8, v31

    .line 676
    .line 677
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 678
    .line 679
    iget-object v4, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 680
    .line 681
    iget v5, v13, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 682
    .line 683
    iget-object v6, v13, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 684
    .line 685
    iget-object v7, v13, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 686
    .line 687
    iget-boolean v8, v13, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 688
    .line 689
    iget v11, v13, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 690
    .line 691
    iget-object v12, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 692
    .line 693
    iget v12, v12, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 694
    .line 695
    iget-boolean v14, v13, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 696
    .line 697
    if-eqz v14, :cond_15

    .line 698
    .line 699
    iget v15, v13, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 700
    .line 701
    move/from16 v27, v15

    .line 702
    .line 703
    goto :goto_11

    .line 704
    :catch_7
    move-exception v0

    .line 705
    goto :goto_13

    .line 706
    :cond_15
    const/16 v27, -0x1

    .line 707
    .line 708
    :goto_11
    if-eqz v14, :cond_16

    .line 709
    .line 710
    iget-object v14, v13, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 711
    .line 712
    move-object/from16 v28, v14

    .line 713
    .line 714
    goto :goto_12

    .line 715
    :cond_16
    const/16 v28, 0x0

    .line 716
    .line 717
    :goto_12
    const/16 v19, 0x0

    .line 718
    .line 719
    move-object/from16 v16, v2

    .line 720
    .line 721
    move-object/from16 v17, v1

    .line 722
    .line 723
    move-object/from16 v18, v4

    .line 724
    .line 725
    move/from16 v20, v5

    .line 726
    .line 727
    move-object/from16 v21, v6

    .line 728
    .line 729
    move-object/from16 v22, v7

    .line 730
    .line 731
    move/from16 v23, v8

    .line 732
    .line 733
    move/from16 v24, v0

    .line 734
    .line 735
    move/from16 v25, v11

    .line 736
    .line 737
    move/from16 v26, v12

    .line 738
    .line 739
    invoke-interface/range {v16 .. v28}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7
    .catch Landroid/os/BadParcelableException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/util/ConcurrentModificationException; {:try_start_b .. :try_end_b} :catch_7

    .line 740
    .line 741
    .line 742
    :cond_17
    invoke-static/range {v29 .. v29}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 743
    .line 744
    .line 745
    const/4 v0, 0x0

    .line 746
    return v0

    .line 747
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    const-string v4, "Failed to schedule "

    .line 750
    .line 751
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v4, " to "

    .line 758
    .line 759
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    move-object/from16 v4, v31

    .line 763
    .line 764
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    const-string v5, " via "

    .line 768
    .line 769
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    const-string v5, " with "

    .line 776
    .line 777
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    const-string v1, ": "

    .line 784
    .line 785
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    invoke-static {v1}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    const-string v17, "Can\'t deliver broadcast"

    .line 799
    .line 800
    const/16 v14, 0xd

    .line 801
    .line 802
    const/16 v19, 0x1

    .line 803
    .line 804
    const/16 v15, 0x1a

    .line 805
    .line 806
    const/16 v18, 0x1

    .line 807
    .line 808
    move-object v13, v3

    .line 809
    move-object v1, v4

    .line 810
    move-object/from16 v16, v17

    .line 811
    .line 812
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 813
    .line 814
    .line 815
    instance-of v1, v1, Landroid/content/pm/ResolveInfo;

    .line 816
    .line 817
    if-nez v1, :cond_18

    .line 818
    .line 819
    const-string/jumbo v0, "remote app"

    .line 820
    .line 821
    .line 822
    const/4 v1, 0x5

    .line 823
    invoke-virtual {v9, v10, v1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 824
    .line 825
    .line 826
    goto :goto_14

    .line 827
    :cond_18
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueModernImpl$BroadcastAnrTimer;

    .line 828
    .line 829
    invoke-virtual {v1, v10}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    .line 830
    .line 831
    .line 832
    iget-object v1, v1, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 835
    .line 836
    .line 837
    iget-object v1, v9, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 838
    .line 839
    const/16 v2, 0x8

    .line 840
    .line 841
    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    new-instance v1, Lcom/android/server/am/BroadcastRetryException;

    .line 845
    .line 846
    invoke-direct {v1, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 847
    .line 848
    .line 849
    throw v1

    .line 850
    :cond_19
    move/from16 v29, v11

    .line 851
    .line 852
    const-string/jumbo v0, "missing IApplicationThread"

    .line 853
    .line 854
    .line 855
    const/4 v1, 0x5

    .line 856
    invoke-virtual {v9, v10, v1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 857
    .line 858
    .line 859
    goto :goto_14

    .line 860
    :cond_1a
    move/from16 v29, v11

    .line 861
    .line 862
    const/4 v1, 0x2

    .line 863
    invoke-virtual {v9, v10, v1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 864
    .line 865
    .line 866
    :goto_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    if-eqz v0, :cond_1b

    .line 871
    .line 872
    goto :goto_15

    .line 873
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 874
    .line 875
    .line 876
    move/from16 v11, v29

    .line 877
    .line 878
    goto/16 :goto_0

    .line 879
    .line 880
    :cond_1c
    move/from16 v29, v11

    .line 881
    .line 882
    :goto_15
    invoke-static/range {v29 .. v29}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 883
    .line 884
    .line 885
    const/4 v1, 0x1

    .line 886
    return v1
.end method

.method public final scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V
    .locals 23

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 14
    .line 15
    move-object v10, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v10, v9

    .line 18
    :goto_0
    if-eqz v10, :cond_5

    .line 19
    .line 20
    move-object/from16 v0, p0

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v3, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 35
    .line 36
    iget v4, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 37
    .line 38
    if-eq v3, v4, :cond_2

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 43
    .line 44
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 45
    .line 46
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 51
    .line 52
    move-object v11, v0

    .line 53
    check-cast v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    const/16 v16, 0x1

    .line 58
    .line 59
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :try_start_0
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 63
    .line 64
    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 65
    .line 66
    iget v13, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 67
    .line 68
    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 71
    .line 72
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 73
    .line 74
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 75
    .line 76
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 77
    .line 78
    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 79
    .line 80
    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 81
    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 85
    .line 86
    :goto_1
    move/from16 v21, v6

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_4

    .line 91
    :cond_3
    const/4 v6, -0x1

    .line 92
    goto :goto_1

    .line 93
    :goto_2
    if-eqz v5, :cond_4

    .line 94
    .line 95
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v22, v5

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    move-object/from16 v22, v9

    .line 101
    .line 102
    :goto_3
    const/16 v16, 0x0

    .line 103
    .line 104
    const/16 v18, 0x1

    .line 105
    .line 106
    move/from16 v17, v0

    .line 107
    .line 108
    move/from16 v19, v3

    .line 109
    .line 110
    move/from16 v20, v4

    .line 111
    .line 112
    invoke-interface/range {v10 .. v22}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v4, "Failed to schedule result of "

    .line 119
    .line 120
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v4, " via "

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v4, ": "

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 v8, 0x1

    .line 150
    const-string v6, "Can\'t deliver broadcast"

    .line 151
    .line 152
    const/16 v3, 0xd

    .line 153
    .line 154
    const/16 v4, 0x1a

    .line 155
    .line 156
    const/4 v7, 0x1

    .line 157
    move-object v5, v6

    .line 158
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_5
    iput-object v9, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 162
    .line 163
    const/4 v0, 0x1

    .line 164
    iput-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    .line 165
    .line 166
    return-void
.end method

.method public final setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move-object/from16 v7, p7

    .line 16
    .line 17
    const-string/jumbo v8, "setDeliveryState"

    .line 18
    .line 19
    .line 20
    invoke-static {v8}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 25
    .line 26
    aget v9, v9, v4

    .line 27
    .line 28
    invoke-static {v9}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    const/4 v12, 0x2

    .line 33
    const/4 v13, 0x3

    .line 34
    const/4 v14, 0x5

    .line 35
    const/4 v15, 0x4

    .line 36
    const/4 v11, 0x1

    .line 37
    if-nez v10, :cond_6

    .line 38
    .line 39
    if-ne v6, v9, :cond_0

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_0
    if-eqz v6, :cond_3

    .line 43
    .line 44
    if-eq v6, v11, :cond_2

    .line 45
    .line 46
    if-eq v6, v12, :cond_2

    .line 47
    .line 48
    if-eq v6, v13, :cond_2

    .line 49
    .line 50
    if-eq v6, v15, :cond_1

    .line 51
    .line 52
    if-eq v6, v14, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v16

    .line 61
    aput-wide v16, v10, v4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v16

    .line 70
    aput-wide v16, v10, v4

    .line 71
    .line 72
    iget v10, v3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    .line 73
    .line 74
    add-int/2addr v10, v11

    .line 75
    iput v10, v3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 79
    .line 80
    const-wide/16 v16, 0x0

    .line 81
    .line 82
    aput-wide v16, v10, v4

    .line 83
    .line 84
    :goto_0
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 85
    .line 86
    aput v6, v10, v4

    .line 87
    .line 88
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 89
    .line 90
    aput-object v7, v10, v4

    .line 91
    .line 92
    iget v10, v3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .line 93
    .line 94
    if-lt v4, v10, :cond_5

    .line 95
    .line 96
    move v15, v10

    .line 97
    :goto_1
    iget-object v14, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 98
    .line 99
    array-length v13, v14

    .line 100
    if-ge v15, v13, :cond_5

    .line 101
    .line 102
    aget v13, v14, v15

    .line 103
    .line 104
    if-eq v13, v11, :cond_4

    .line 105
    .line 106
    if-eq v13, v12, :cond_4

    .line 107
    .line 108
    const/4 v14, 0x3

    .line 109
    if-eq v13, v14, :cond_4

    .line 110
    .line 111
    const/4 v14, 0x5

    .line 112
    if-eq v13, v14, :cond_4

    .line 113
    .line 114
    const/4 v14, 0x6

    .line 115
    if-eq v13, v14, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 119
    .line 120
    iput v15, v3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .line 121
    .line 122
    const/4 v13, 0x3

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    :goto_2
    iget v13, v3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .line 125
    .line 126
    if-eq v13, v10, :cond_6

    .line 127
    .line 128
    move v10, v11

    .line 129
    goto :goto_4

    .line 130
    :cond_6
    :goto_3
    const/4 v10, 0x0

    .line 131
    :goto_4
    const-string v13, "/beyondCountChanged:"

    .line 132
    .line 133
    const-string v14, "/reason:"

    .line 134
    .line 135
    const-string v15, "/state: "

    .line 136
    .line 137
    if-eqz v1, :cond_9

    .line 138
    .line 139
    const/4 v11, 0x4

    .line 140
    if-ne v6, v11, :cond_7

    .line 141
    .line 142
    iget-object v7, v1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 143
    .line 144
    new-instance v11, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-object v12, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 150
    .line 151
    invoke-virtual {v12}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v12, " scheduled"

    .line 159
    .line 160
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    const-wide/16 v13, 0x40

    .line 172
    .line 173
    invoke-static {v13, v14, v7, v11, v12}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    .line 177
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    .line 180
    .line 181
    move-result-wide v11

    .line 182
    aput-wide v11, v7, v4

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    const-wide/16 v5, 0x40

    .line 186
    .line 187
    if-ne v9, v11, :cond_8

    .line 188
    .line 189
    invoke-static/range {p6 .. p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-eqz v11, :cond_8

    .line 194
    .line 195
    iget-object v7, v1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    invoke-static {v5, v6, v7, v11}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    .line 205
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v6

    .line 210
    aput-wide v6, v5, v4

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_8
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    .line 214
    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 221
    .line 222
    .line 223
    move-result-wide v11

    .line 224
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-static/range {p6 .. p6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    aput-object v6, v5, v4

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_9
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    .line 257
    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 264
    .line 265
    .line 266
    move-result-wide v11

    .line 267
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-static/range {p6 .. p6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    aput-object v6, v5, v4

    .line 297
    .line 298
    :goto_5
    invoke-static {v9}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-nez v5, :cond_20

    .line 303
    .line 304
    invoke-static/range {p6 .. p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_20

    .line 309
    .line 310
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 311
    .line 312
    aget v5, v5, v4

    .line 313
    .line 314
    const/4 v6, 0x1

    .line 315
    if-eq v5, v6, :cond_b

    .line 316
    .line 317
    const/4 v6, 0x3

    .line 318
    if-eq v5, v6, :cond_c

    .line 319
    .line 320
    const/4 v7, 0x5

    .line 321
    if-eq v5, v7, :cond_c

    .line 322
    .line 323
    :cond_a
    const/4 v2, 0x0

    .line 324
    goto/16 :goto_10

    .line 325
    .line 326
    :cond_b
    const/4 v6, 0x3

    .line 327
    :cond_c
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    .line 328
    .line 329
    .line 330
    move-result v19

    .line 331
    iget v5, v3, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 332
    .line 333
    const/4 v7, -0x1

    .line 334
    if-ne v5, v7, :cond_d

    .line 335
    .line 336
    const/16 v5, 0x3e8

    .line 337
    .line 338
    :cond_d
    move/from16 v20, v5

    .line 339
    .line 340
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 341
    .line 342
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v21

    .line 346
    move-object/from16 v5, p5

    .line 347
    .line 348
    instance-of v9, v5, Lcom/android/server/am/BroadcastFilter;

    .line 349
    .line 350
    if-eqz v9, :cond_e

    .line 351
    .line 352
    const/16 v22, 0x1

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_e
    const/16 v22, 0x2

    .line 356
    .line 357
    :goto_6
    if-nez v1, :cond_f

    .line 358
    .line 359
    move/from16 v38, v7

    .line 360
    .line 361
    const/16 v23, 0x0

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_f
    iget-boolean v7, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 365
    .line 366
    if-eqz v7, :cond_10

    .line 367
    .line 368
    const/16 v7, 0x14

    .line 369
    .line 370
    move/from16 v23, v6

    .line 371
    .line 372
    move/from16 v38, v7

    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_10
    iget v6, v1, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    .line 376
    .line 377
    move/from16 v38, v6

    .line 378
    .line 379
    const/16 v23, 0x1

    .line 380
    .line 381
    :goto_7
    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 382
    .line 383
    aget-wide v6, v6, v4

    .line 384
    .line 385
    iget-wide v11, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 386
    .line 387
    sub-long v24, v6, v11

    .line 388
    .line 389
    iget-object v11, v3, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 390
    .line 391
    aget-wide v11, v11, v4

    .line 392
    .line 393
    sub-long v28, v11, v6

    .line 394
    .line 395
    if-eqz v1, :cond_a

    .line 396
    .line 397
    iget-boolean v6, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 398
    .line 399
    if-eqz v6, :cond_11

    .line 400
    .line 401
    const/16 v30, 0x2

    .line 402
    .line 403
    goto :goto_8

    .line 404
    :cond_11
    const/16 v30, 0x1

    .line 405
    .line 406
    :goto_8
    if-eqz v2, :cond_12

    .line 407
    .line 408
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 409
    .line 410
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 411
    .line 412
    :goto_9
    move-object/from16 v31, v2

    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_12
    const/4 v2, 0x0

    .line 416
    goto :goto_9

    .line 417
    :goto_a
    iget-object v2, v3, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    if-eqz v6, :cond_13

    .line 424
    .line 425
    const/4 v12, 0x2

    .line 426
    goto :goto_b

    .line 427
    :cond_13
    const/4 v12, 0x1

    .line 428
    :goto_b
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 429
    .line 430
    if-eqz v6, :cond_14

    .line 431
    .line 432
    or-int/lit8 v12, v12, 0x4

    .line 433
    .line 434
    :cond_14
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 435
    .line 436
    if-eqz v6, :cond_15

    .line 437
    .line 438
    or-int/lit8 v12, v12, 0x8

    .line 439
    .line 440
    :cond_15
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 441
    .line 442
    if-eqz v6, :cond_16

    .line 443
    .line 444
    or-int/lit8 v12, v12, 0x10

    .line 445
    .line 446
    :cond_16
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 447
    .line 448
    if-eqz v6, :cond_17

    .line 449
    .line 450
    or-int/lit8 v12, v12, 0x20

    .line 451
    .line 452
    :cond_17
    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 453
    .line 454
    if-eqz v6, :cond_18

    .line 455
    .line 456
    or-int/lit8 v12, v12, 0x40

    .line 457
    .line 458
    :cond_18
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 459
    .line 460
    if-eqz v6, :cond_19

    .line 461
    .line 462
    or-int/lit16 v12, v12, 0x80

    .line 463
    .line 464
    :cond_19
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    .line 465
    .line 466
    if-eqz v6, :cond_1a

    .line 467
    .line 468
    or-int/lit16 v12, v12, 0x100

    .line 469
    .line 470
    :cond_1a
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    .line 471
    .line 472
    if-eqz v6, :cond_1b

    .line 473
    .line 474
    or-int/lit16 v12, v12, 0x200

    .line 475
    .line 476
    :cond_1b
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 477
    .line 478
    if-eqz v6, :cond_1c

    .line 479
    .line 480
    or-int/lit16 v12, v12, 0x400

    .line 481
    .line 482
    :cond_1c
    iget-boolean v6, v3, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 483
    .line 484
    if-eqz v6, :cond_1d

    .line 485
    .line 486
    or-int/lit16 v6, v12, 0x800

    .line 487
    .line 488
    move/from16 v33, v6

    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_1d
    move/from16 v33, v12

    .line 492
    .line 493
    :goto_c
    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 494
    .line 495
    if-eqz v6, :cond_1e

    .line 496
    .line 497
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    move/from16 v34, v6

    .line 502
    .line 503
    goto :goto_d

    .line 504
    :cond_1e
    const/16 v34, 0x0

    .line 505
    .line 506
    :goto_d
    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 507
    .line 508
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 509
    .line 510
    .line 511
    move-result v35

    .line 512
    if-eqz v9, :cond_1f

    .line 513
    .line 514
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .line 515
    .line 516
    invoke-virtual {v5}, Landroid/content/IntentFilter;->getPriority()I

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    :goto_e
    move/from16 v36, v5

    .line 521
    .line 522
    goto :goto_f

    .line 523
    :cond_1f
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 524
    .line 525
    iget v5, v5, Landroid/content/pm/ResolveInfo;->priority:I

    .line 526
    .line 527
    goto :goto_e

    .line 528
    :goto_f
    iget v5, v3, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 529
    .line 530
    iget-boolean v6, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    .line 531
    .line 532
    const-wide/16 v40, 0x0

    .line 533
    .line 534
    const/16 v18, 0x1db

    .line 535
    .line 536
    const-wide/16 v26, 0x0

    .line 537
    .line 538
    move-object/from16 v32, v2

    .line 539
    .line 540
    move/from16 v37, v5

    .line 541
    .line 542
    move/from16 v39, v6

    .line 543
    .line 544
    invoke-static/range {v18 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;IIIIIIZJ)V

    .line 545
    .line 546
    .line 547
    const/4 v2, 0x0

    .line 548
    iput-boolean v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    .line 549
    .line 550
    iput-boolean v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 551
    .line 552
    :goto_10
    iget v1, v3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    .line 553
    .line 554
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 555
    .line 556
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 557
    .line 558
    .line 559
    move-result v5

    .line 560
    if-ne v1, v5, :cond_21

    .line 561
    .line 562
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    .line 563
    .line 564
    .line 565
    goto :goto_11

    .line 566
    :cond_20
    const/4 v2, 0x0

    .line 567
    :cond_21
    :goto_11
    if-eqz v10, :cond_28

    .line 568
    .line 569
    iget v1, v3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .line 570
    .line 571
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 572
    .line 573
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 574
    .line 575
    .line 576
    move-result v5

    .line 577
    if-ne v1, v5, :cond_22

    .line 578
    .line 579
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 580
    .line 581
    .line 582
    :cond_22
    iget-boolean v1, v3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 583
    .line 584
    if-nez v1, :cond_23

    .line 585
    .line 586
    iget-boolean v1, v3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 587
    .line 588
    if-eqz v1, :cond_28

    .line 589
    .line 590
    :cond_23
    move v11, v2

    .line 591
    :goto_12
    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 592
    .line 593
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-ge v11, v1, :cond_27

    .line 598
    .line 599
    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 600
    .line 601
    aget v1, v1, v11

    .line 602
    .line 603
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_25

    .line 608
    .line 609
    if-ne v11, v4, :cond_24

    .line 610
    .line 611
    goto :goto_13

    .line 612
    :cond_24
    const/4 v2, 0x1

    .line 613
    goto :goto_15

    .line 614
    :cond_25
    :goto_13
    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 615
    .line 616
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    instance-of v2, v1, Lcom/android/server/am/BroadcastFilter;

    .line 621
    .line 622
    if-eqz v2, :cond_26

    .line 623
    .line 624
    move-object v2, v1

    .line 625
    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 626
    .line 627
    iget-object v2, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 628
    .line 629
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 630
    .line 631
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 632
    .line 633
    goto :goto_14

    .line 634
    :cond_26
    move-object v2, v1

    .line 635
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 636
    .line 637
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 638
    .line 639
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 640
    .line 641
    :goto_14
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    if-eqz v1, :cond_24

    .line 650
    .line 651
    const/4 v2, 0x1

    .line 652
    iput-boolean v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 653
    .line 654
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 655
    .line 656
    .line 657
    :goto_15
    add-int/lit8 v11, v11, 0x1

    .line 658
    .line 659
    goto :goto_12

    .line 660
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 661
    .line 662
    .line 663
    :cond_28
    invoke-static {v8}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 664
    .line 665
    .line 666
    return-void
.end method

.method public final setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 14
    .line 15
    iget v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 16
    .line 17
    sub-int/2addr v3, v0

    .line 18
    iget v4, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    .line 19
    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    .line 23
    .line 24
    if-lt v0, p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move p0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    .line 34
    .line 35
    if-lt v0, p0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v1, v2

    .line 54
    :cond_4
    :goto_2
    return v1
.end method

.method public final shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 8
    .line 9
    aget v3, v3, v2

    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    iget-object v4, v4, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 14
    .line 15
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v3}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const-string v0, "already terminal state"

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget-boolean v3, v4, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-string/jumbo v0, "isInFullBackup"

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    .line 41
    .line 42
    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    const-string/jumbo v0, "getReceiverIntent"

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    instance-of v3, v2, Lcom/android/server/am/BroadcastFilter;

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    move-object v5, v2

    .line 64
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .line 65
    .line 66
    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 67
    .line 68
    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    .line 69
    .line 70
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 71
    .line 72
    if-eq v5, v6, :cond_4

    .line 73
    .line 74
    const-string v0, "BroadcastFilter for mismatched PID"

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    if-eqz v5, :cond_c

    .line 81
    .line 82
    const-string v5, " is skipped in RestrictedPackage to "

    .line 83
    .line 84
    const-string/jumbo v7, "intent:"

    .line 85
    .line 86
    .line 87
    const-string v8, "BroadcastQueue"

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    if-eqz v3, :cond_8

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 111
    .line 112
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 115
    .line 116
    iget v9, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 117
    .line 118
    iget v10, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 119
    .line 120
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 121
    .line 122
    move-object v13, v0

    .line 123
    move v14, v9

    .line 124
    move/from16 v21, v10

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    move v14, v0

    .line 128
    move-object v3, v6

    .line 129
    move-object v13, v3

    .line 130
    move/from16 v21, v9

    .line 131
    .line 132
    :goto_0
    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 133
    .line 134
    iget-object v0, v2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v0, :cond_c

    .line 137
    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    move-object/from16 v20, v0

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    move-object/from16 v20, v6

    .line 148
    .line 149
    :goto_1
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 150
    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    const-string v0, "alarm"

    .line 154
    .line 155
    :goto_2
    move-object v15, v0

    .line 156
    goto :goto_3

    .line 157
    :cond_7
    const-string/jumbo v0, "broadcast"

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :goto_3
    sget-object v11, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 162
    .line 163
    new-instance v12, Landroid/content/ComponentName;

    .line 164
    .line 165
    iget-object v0, v2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 166
    .line 167
    const-string v3, ""

    .line 168
    .line 169
    invoke-direct {v12, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 173
    .line 174
    iget v3, v2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 175
    .line 176
    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 177
    .line 178
    invoke-virtual {v9}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 179
    .line 180
    .line 181
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 182
    .line 183
    const/16 v19, 0x0

    .line 184
    .line 185
    const/16 v18, 0x1

    .line 186
    .line 187
    move-object/from16 v16, v0

    .line 188
    .line 189
    move/from16 v17, v3

    .line 190
    .line 191
    move/from16 v22, v4

    .line 192
    .line 193
    invoke-virtual/range {v11 .. v22}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_c

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object v1, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 217
    .line 218
    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    const-string v0, "To dynamic Broadcast receiver from Restricted UID"

    .line 231
    .line 232
    return-object v0

    .line 233
    :cond_8
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 234
    .line 235
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 236
    .line 237
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 238
    .line 239
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 244
    .line 245
    if-eqz v4, :cond_9

    .line 246
    .line 247
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 248
    .line 249
    if-eqz v4, :cond_9

    .line 250
    .line 251
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 252
    .line 253
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 254
    .line 255
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 258
    .line 259
    iget v10, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 260
    .line 261
    iget v11, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 262
    .line 263
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 264
    .line 265
    move-object v14, v3

    .line 266
    move v15, v10

    .line 267
    move/from16 v22, v11

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_9
    move v15, v3

    .line 271
    move-object v4, v6

    .line 272
    move-object v14, v4

    .line 273
    move/from16 v22, v9

    .line 274
    .line 275
    :goto_4
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 276
    .line 277
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 280
    .line 281
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 282
    .line 283
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 284
    .line 285
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 286
    .line 287
    invoke-virtual {v0, v3, v10}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    if-eqz v0, :cond_a

    .line 292
    .line 293
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 294
    .line 295
    :cond_a
    move/from16 v23, v9

    .line 296
    .line 297
    if-eqz v4, :cond_b

    .line 298
    .line 299
    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    move-object/from16 v21, v0

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_b
    move-object/from16 v21, v6

    .line 307
    .line 308
    :goto_5
    new-instance v0, Landroid/content/ComponentName;

    .line 309
    .line 310
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 311
    .line 312
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 313
    .line 314
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 315
    .line 316
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 317
    .line 318
    invoke-direct {v0, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 322
    .line 323
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 324
    .line 325
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 326
    .line 327
    sget-object v12, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    .line 328
    .line 329
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 330
    .line 331
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 332
    .line 333
    .line 334
    move-result v18

    .line 335
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 336
    .line 337
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    .line 338
    .line 339
    .line 340
    const-string/jumbo v16, "broadcast"

    .line 341
    .line 342
    .line 343
    const/16 v19, 0x0

    .line 344
    .line 345
    const/16 v20, 0x0

    .line 346
    .line 347
    move-object v13, v0

    .line 348
    move-object/from16 v17, v3

    .line 349
    .line 350
    invoke-virtual/range {v12 .. v23}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_c

    .line 355
    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 362
    .line 363
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    const-string v0, "To manifest broadcast receiver from Restricted UID"

    .line 388
    .line 389
    return-object v0

    .line 390
    :cond_c
    return-object v6
.end method

.method public final testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "Test "

    .line 10
    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mProcessQueues:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    .line 20
    .line 21
    :goto_1
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-wide v6, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLastTestFailureTime:J

    .line 34
    .line 35
    const-wide/16 v8, 0x3e8

    .line 36
    .line 37
    add-long/2addr v6, v8

    .line 38
    cmp-long p1, v4, v6

    .line 39
    .line 40
    if-lez p1, :cond_0

    .line 41
    .line 42
    iput-wide v4, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLastTestFailureTime:J

    .line 43
    .line 44
    const-string p0, " failed due to "

    .line 45
    .line 46
    invoke-static {v3, p2, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, " "

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide p1

    .line 66
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 81
    .line 82
    .line 83
    :cond_0
    return v0

    .line 84
    :cond_1
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, " passed"

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 111
    .line 112
    .line 113
    const/4 p0, 0x1

    .line 114
    return p0
.end method

.method public final updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-boolean v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq v3, v2, :cond_2

    .line 20
    .line 21
    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0, v4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v0, v2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-eq p1, v1, :cond_4

    .line 55
    .line 56
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 57
    .line 58
    if-nez v3, :cond_4

    .line 59
    .line 60
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v3, v4

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_1
    move v3, v2

    .line 68
    :goto_2
    if-eqz v0, :cond_b

    .line 69
    .line 70
    if-eqz v3, :cond_a

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    cmp-long v0, v0, v5

    .line 85
    .line 86
    if-gtz v0, :cond_6

    .line 87
    .line 88
    :cond_5
    move v0, v2

    .line 89
    goto :goto_3

    .line 90
    :cond_6
    move v0, v4

    .line 91
    :goto_3
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 92
    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    cmp-long v1, v5, v7

    .line 104
    .line 105
    if-ltz v1, :cond_8

    .line 106
    .line 107
    :cond_7
    move v4, v2

    .line 108
    :cond_8
    if-eqz v0, :cond_9

    .line 109
    .line 110
    if-nez v4, :cond_c

    .line 111
    .line 112
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 113
    .line 114
    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 119
    .line 120
    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_a
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_b
    if-eqz v3, :cond_c

    .line 135
    .line 136
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 141
    .line 142
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_d

    .line 147
    .line 148
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_d

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_d

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_d

    .line 167
    .line 168
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 169
    .line 170
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 171
    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    .line 173
    .line 174
    .line 175
    :cond_d
    return-void
.end method

.method public final updateRunningList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->updateRunningListLocked()V

    .line 8
    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final updateRunningListLocked()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    move v3, v2

    .line 6
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 7
    .line 8
    array-length v5, v4

    .line 9
    if-ge v2, v5, :cond_1

    .line 10
    .line 11
    aget-object v4, v4, v2

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-boolean v4, v4, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 29
    .line 30
    iget v2, v2, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    .line 31
    .line 32
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 37
    .line 38
    array-length v3, v3

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningSize()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v3, v4

    .line 44
    sub-int/2addr v3, v2

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    const-string/jumbo v2, "updateRunningList"

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const/4 v7, 0x1

    .line 66
    xor-int/2addr v6, v7

    .line 67
    iget-object v8, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    .line 71
    .line 72
    iget-object v8, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 73
    .line 74
    move v9, v1

    .line 75
    :goto_1
    const/4 v10, 0x3

    .line 76
    if-eqz v8, :cond_21

    .line 77
    .line 78
    if-lez v3, :cond_21

    .line 79
    .line 80
    iget-object v11, v8, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 81
    .line 82
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 83
    .line 84
    .line 85
    move-result-wide v12

    .line 86
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    if-nez v14, :cond_3

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningSize()I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    iget-object v15, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 99
    .line 100
    iget v15, v15, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    .line 101
    .line 102
    if-lt v14, v15, :cond_5

    .line 103
    .line 104
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    if-eqz v14, :cond_4

    .line 109
    .line 110
    iget-boolean v14, v14, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    move v14, v1

    .line 114
    :goto_2
    if-nez v14, :cond_5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    cmp-long v14, v12, v4

    .line 118
    .line 119
    if-lez v14, :cond_6

    .line 120
    .line 121
    if-nez v6, :cond_6

    .line 122
    .line 123
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 124
    .line 125
    invoke-virtual {v1, v7, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 126
    .line 127
    .line 128
    goto/16 :goto_18

    .line 129
    .line 130
    :cond_6
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 131
    .line 132
    iget-boolean v13, v8, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 133
    .line 134
    if-eqz v13, :cond_7

    .line 135
    .line 136
    iput-boolean v1, v8, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 137
    .line 138
    new-instance v13, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    const/4 v14, 0x2

    .line 141
    invoke-direct {v13, v14}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v13, v12, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-nez v12, :cond_8

    .line 152
    .line 153
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 154
    .line 155
    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 156
    .line 157
    iget-object v13, v8, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 158
    .line 159
    iget v14, v8, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 160
    .line 161
    invoke-virtual {v12, v14, v13}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 166
    .line 167
    invoke-virtual {v13, v14, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    invoke-virtual {v0, v12}, Lcom/android/server/am/BroadcastQueueModernImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    invoke-virtual {v8, v12, v13, v14}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    .line 176
    .line 177
    .line 178
    :cond_8
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-eqz v12, :cond_9

    .line 183
    .line 184
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 185
    .line 186
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 187
    .line 188
    iget-object v14, v8, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 189
    .line 190
    invoke-virtual {v13, v10, v14}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-nez v13, :cond_d

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 204
    .line 205
    if-nez v13, :cond_a

    .line 206
    .line 207
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_a
    iget-object v13, v13, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 211
    .line 212
    iget v14, v13, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 213
    .line 214
    if-lez v14, :cond_b

    .line 215
    .line 216
    iget-boolean v13, v13, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 217
    .line 218
    xor-int/2addr v13, v7

    .line 219
    goto :goto_3

    .line 220
    :cond_b
    iget-boolean v13, v13, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 221
    .line 222
    :goto_3
    if-eqz v13, :cond_c

    .line 223
    .line 224
    :goto_4
    move-object v8, v11

    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->clearInvalidPendingColdStart()V

    .line 228
    .line 229
    .line 230
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 231
    .line 232
    :cond_d
    :goto_5
    const/4 v13, 0x0

    .line 233
    invoke-virtual {v0, v13}, Lcom/android/server/am/BroadcastQueueModernImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    .line 234
    .line 235
    .line 236
    move-result v14

    .line 237
    iget-object v15, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 238
    .line 239
    aput-object v8, v15, v14

    .line 240
    .line 241
    iget v15, v8, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 242
    .line 243
    invoke-static {v15}, Landroid/os/UserHandle;->isCore(I)Z

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    if-nez v15, :cond_f

    .line 248
    .line 249
    sget-object v15, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    .line 250
    .line 251
    iget v10, v8, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 252
    .line 253
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    iget-object v1, v15, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 258
    .line 259
    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v13, v15, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    if-nez v13, :cond_e

    .line 267
    .line 268
    iget-object v13, v15, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_6

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    goto :goto_7

    .line 276
    :cond_e
    :goto_6
    monitor-exit v1

    .line 277
    goto :goto_8

    .line 278
    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    throw v0

    .line 280
    :cond_f
    :goto_8
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 281
    .line 282
    invoke-static {v1, v8}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iput-object v1, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 287
    .line 288
    const-string v1, "BroadcastQueue.mRunning["

    .line 289
    .line 290
    const-string v10, "]"

    .line 291
    .line 292
    invoke-static {v14, v1, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iput-object v1, v8, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 297
    .line 298
    iget v1, v8, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 299
    .line 300
    if-lez v1, :cond_10

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_10
    iget v1, v8, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 304
    .line 305
    if-lez v1, :cond_11

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_11
    iget v1, v8, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 309
    .line 310
    if-lez v1, :cond_12

    .line 311
    .line 312
    :goto_9
    move v1, v7

    .line 313
    goto :goto_a

    .line 314
    :cond_12
    const/4 v1, 0x0

    .line 315
    :goto_a
    iput-boolean v1, v8, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 316
    .line 317
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_13

    .line 322
    .line 323
    invoke-virtual {v0, v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 324
    .line 325
    .line 326
    :cond_13
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 327
    .line 328
    .line 329
    if-eqz v1, :cond_14

    .line 330
    .line 331
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    .line 332
    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_14
    iget-object v1, v8, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 336
    .line 337
    new-instance v10, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v13, " starting"

    .line 350
    .line 351
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v10

    .line 358
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v13

    .line 362
    const-wide/16 v14, 0x40

    .line 363
    .line 364
    invoke-static {v14, v15, v1, v10, v13}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 365
    .line 366
    .line 367
    :goto_b
    if-eqz v12, :cond_15

    .line 368
    .line 369
    iget-boolean v1, v8, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 370
    .line 371
    or-int/2addr v1, v9

    .line 372
    :try_start_1
    invoke-virtual {v0, v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    .line 373
    .line 374
    .line 375
    move-result v9
    :try_end_1
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    move-wide/from16 v25, v4

    .line 377
    .line 378
    :goto_c
    const/4 v10, 0x0

    .line 379
    goto/16 :goto_16

    .line 380
    .line 381
    :catch_0
    invoke-virtual {v0, v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 382
    .line 383
    .line 384
    move-wide/from16 v25, v4

    .line 385
    .line 386
    move v9, v7

    .line 387
    goto :goto_c

    .line 388
    :cond_15
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    const-string/jumbo v10, "isActive"

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v10}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iput-boolean v7, v8, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 399
    .line 400
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 409
    .line 410
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v12

    .line 414
    instance-of v13, v12, Lcom/android/server/am/BroadcastFilter;

    .line 415
    .line 416
    const/4 v14, 0x2

    .line 417
    if-eqz v13, :cond_16

    .line 418
    .line 419
    const/4 v13, 0x0

    .line 420
    iput-object v13, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 421
    .line 422
    const-string v1, "BroadcastFilter for cold app"

    .line 423
    .line 424
    invoke-virtual {v0, v8, v14, v1}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :goto_d
    move-wide/from16 v25, v4

    .line 428
    .line 429
    :goto_e
    move v1, v7

    .line 430
    const/4 v10, 0x0

    .line 431
    goto/16 :goto_15

    .line 432
    .line 433
    :cond_16
    const/4 v13, 0x0

    .line 434
    invoke-virtual {v0, v8, v1, v10}, Lcom/android/server/am/BroadcastQueueModernImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    if-eqz v10, :cond_17

    .line 439
    .line 440
    iput-object v13, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 441
    .line 442
    invoke-virtual {v0, v8, v14, v10}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    goto :goto_d

    .line 446
    :cond_17
    move-object v10, v12

    .line 447
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 448
    .line 449
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 450
    .line 451
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 452
    .line 453
    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 454
    .line 455
    .line 456
    move-result-object v10

    .line 457
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    .line 458
    .line 459
    .line 460
    move-result v14

    .line 461
    iput-boolean v14, v8, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 462
    .line 463
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    .line 464
    .line 465
    .line 466
    move-result v14

    .line 467
    iput-boolean v14, v8, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    .line 468
    .line 469
    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 470
    .line 471
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    .line 472
    .line 473
    .line 474
    move-result v14

    .line 475
    or-int/lit8 v20, v14, 0x4

    .line 476
    .line 477
    new-instance v14, Lcom/android/server/am/HostingRecord;

    .line 478
    .line 479
    const-string/jumbo v22, "broadcast"

    .line 480
    .line 481
    .line 482
    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 483
    .line 484
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v29

    .line 488
    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 489
    .line 490
    if-eqz v15, :cond_18

    .line 491
    .line 492
    const-string v15, "alarm"

    .line 493
    .line 494
    :goto_f
    move-object/from16 v30, v15

    .line 495
    .line 496
    goto :goto_10

    .line 497
    :cond_18
    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    .line 498
    .line 499
    if-eqz v15, :cond_19

    .line 500
    .line 501
    const-string/jumbo v15, "push_message"

    .line 502
    .line 503
    .line 504
    goto :goto_f

    .line 505
    :cond_19
    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    .line 506
    .line 507
    if-eqz v15, :cond_1a

    .line 508
    .line 509
    const-string/jumbo v15, "push_message_over_quota"

    .line 510
    .line 511
    .line 512
    goto :goto_f

    .line 513
    :cond_1a
    const-string/jumbo v15, "unknown"

    .line 514
    .line 515
    .line 516
    goto :goto_f

    .line 517
    :goto_10
    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v23

    .line 521
    const/16 v25, 0x0

    .line 522
    .line 523
    const/16 v26, -0x1

    .line 524
    .line 525
    const/16 v24, 0x0

    .line 526
    .line 527
    const/16 v27, 0x0

    .line 528
    .line 529
    const/16 v28, 0x0

    .line 530
    .line 531
    move-object/from16 v21, v14

    .line 532
    .line 533
    invoke-direct/range {v21 .. v30}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 537
    .line 538
    if-eqz v10, :cond_1b

    .line 539
    .line 540
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    .line 541
    .line 542
    .line 543
    move-result-wide v16

    .line 544
    const-wide/16 v18, 0x0

    .line 545
    .line 546
    cmp-long v10, v16, v18

    .line 547
    .line 548
    if-lez v10, :cond_1b

    .line 549
    .line 550
    move/from16 v22, v7

    .line 551
    .line 552
    goto :goto_11

    .line 553
    :cond_1b
    const/16 v22, 0x0

    .line 554
    .line 555
    :goto_11
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 556
    .line 557
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    .line 558
    .line 559
    .line 560
    move-result v10

    .line 561
    const/high16 v15, 0x2000000

    .line 562
    .line 563
    and-int/2addr v10, v15

    .line 564
    move-wide/from16 v25, v4

    .line 565
    .line 566
    if-eqz v10, :cond_1c

    .line 567
    .line 568
    move/from16 v23, v7

    .line 569
    .line 570
    goto :goto_12

    .line 571
    :cond_1c
    const/16 v23, 0x0

    .line 572
    .line 573
    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 574
    .line 575
    .line 576
    move-result-wide v4

    .line 577
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 578
    .line 579
    iget-object v15, v8, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 580
    .line 581
    const/16 v19, 0x1

    .line 582
    .line 583
    const/16 v24, 0x0

    .line 584
    .line 585
    move-object/from16 v16, v10

    .line 586
    .line 587
    move-object/from16 v17, v15

    .line 588
    .line 589
    move-object/from16 v18, v13

    .line 590
    .line 591
    move-object/from16 v21, v14

    .line 592
    .line 593
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    iput-object v10, v8, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 598
    .line 599
    if-nez v10, :cond_1d

    .line 600
    .line 601
    const/4 v13, 0x0

    .line 602
    iput-object v13, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 603
    .line 604
    const/4 v1, 0x5

    .line 605
    const-string/jumbo v4, "startProcessLocked failed"

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v8, v1, v4}, Lcom/android/server/am/BroadcastQueueModernImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_e

    .line 612
    .line 613
    :cond_1d
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 614
    .line 615
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 616
    .line 617
    iget-object v13, v13, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 618
    .line 619
    invoke-virtual {v1, v12}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    .line 620
    .line 621
    .line 622
    move-result-object v12

    .line 623
    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 624
    .line 625
    iget-object v14, v13, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    .line 626
    .line 627
    monitor-enter v14

    .line 628
    :try_start_2
    iget-boolean v15, v13, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 629
    .line 630
    if-nez v15, :cond_1e

    .line 631
    .line 632
    monitor-exit v14

    .line 633
    const/4 v10, 0x0

    .line 634
    goto :goto_14

    .line 635
    :catchall_1
    move-exception v0

    .line 636
    goto :goto_17

    .line 637
    :cond_1e
    new-instance v15, Landroid/app/ApplicationStartInfo;

    .line 638
    .line 639
    invoke-direct {v15}, Landroid/app/ApplicationStartInfo;-><init>()V

    .line 640
    .line 641
    .line 642
    invoke-static {v15, v10}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 643
    .line 644
    .line 645
    const/4 v10, 0x0

    .line 646
    invoke-virtual {v15, v10}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v15, v10, v4, v5}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v15, v7}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 653
    .line 654
    .line 655
    if-eqz v1, :cond_1f

    .line 656
    .line 657
    invoke-virtual {v15, v10}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 658
    .line 659
    .line 660
    goto :goto_13

    .line 661
    :cond_1f
    const/4 v1, 0x3

    .line 662
    invoke-virtual {v15, v1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 663
    .line 664
    .line 665
    :goto_13
    invoke-virtual {v15, v12}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v13, v15}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 669
    .line 670
    .line 671
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 672
    :goto_14
    move v1, v10

    .line 673
    :goto_15
    move/from16 v31, v9

    .line 674
    .line 675
    move v9, v1

    .line 676
    move/from16 v1, v31

    .line 677
    .line 678
    :goto_16
    if-eqz v9, :cond_20

    .line 679
    .line 680
    invoke-virtual {v0, v8}, Lcom/android/server/am/BroadcastQueueModernImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 681
    .line 682
    .line 683
    :cond_20
    add-int/lit8 v3, v3, -0x1

    .line 684
    .line 685
    move v9, v1

    .line 686
    move v1, v10

    .line 687
    move-object v8, v11

    .line 688
    move-wide/from16 v4, v25

    .line 689
    .line 690
    goto/16 :goto_1

    .line 691
    .line 692
    :goto_17
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 693
    throw v0

    .line 694
    :cond_21
    :goto_18
    if-eqz v9, :cond_22

    .line 695
    .line 696
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 697
    .line 698
    const/4 v3, 0x3

    .line 699
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 700
    .line 701
    .line 702
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->checkPendingColdStartValidityLocked()V

    .line 703
    .line 704
    .line 705
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 706
    .line 707
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    if-nez v1, :cond_23

    .line 712
    .line 713
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 714
    .line 715
    new-instance v1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    .line 716
    .line 717
    const/4 v3, 0x0

    .line 718
    invoke-direct {v1, v3}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 722
    .line 723
    .line 724
    :cond_23
    invoke-static {v2}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 725
    .line 726
    .line 727
    return-void
.end method

.method public final waitFor(Ljava/util/function/BooleanSupplier;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->enqueueUpdateRunningList()V

    .line 27
    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method
