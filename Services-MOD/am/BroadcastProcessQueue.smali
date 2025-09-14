.class public final Lcom/android/server/am/BroadcastProcessQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public app:Lcom/android/server/am/ProcessRecord;

.field public final constants:Lcom/android/server/am/BroadcastConstants;

.field public lastCpuDelayTime:J

.field public lastProcessState:I

.field public mActive:Lcom/android/server/am/BroadcastRecord;

.field public mActiveAssumedDeliveryCountSinceIdle:I

.field public mActiveCountConsecutiveNormal:I

.field public mActiveCountConsecutiveUrgent:I

.field public mActiveCountSinceIdle:I

.field public mActiveFirstLaunch:Z

.field public mActiveIndex:I

.field public mActiveReEnqueued:Z

.field public mActiveViaColdStart:Z

.field public mActiveWasStopped:Z

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mCountAlarm:I

.field public mCountDeferred:I

.field public mCountEnqueued:I

.field public mCountForeground:I

.field public mCountForegroundDeferred:I

.field public mCountInstrumented:I

.field public mCountInteractive:I

.field public mCountManifest:I

.field public mCountOrdered:I

.field public mCountPrioritizeEarliestRequests:I

.field public mCountPrioritized:I

.field public mCountPrioritizedDeferred:I

.field public mCountResultTo:I

.field public mForcedDelayedDurationMs:J

.field public mLastDeferredStates:Z

.field public final mOutgoingBroadcasts:Ljava/util/ArrayList;

.field public final mPending:Ljava/util/ArrayDeque;

.field public final mPendingOffload:Ljava/util/ArrayDeque;

.field public final mPendingUrgent:Ljava/util/ArrayDeque;

.field public mProcessFreezable:Z

.field public mProcessInstrumented:Z

.field public mProcessPersistent:Z

.field public mRunnableAt:J

.field public mRunnableAtInvalidated:Z

.field public mRunnableAtReason:I

.field public mTimeoutScheduled:Z

.field public mUidForeground:Z

.field public final processName:Ljava/lang/String;

.field public processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

.field public runningOomAdjusted:Z

.field public runningTraceTrackName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 24
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 26
    const-wide v0, 0x7fffffffffffffffL

    .line 31
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 33
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    .line 48
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 55
    return-void
.end method

.method public static assertHealthLocked(Ljava/util/ArrayDeque;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 24
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 26
    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 28
    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 30
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 32
    aget v2, v2, v0

    .line 34
    invoke-static {v2}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 40
    iget-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 42
    if-nez v2, :cond_1

    .line 44
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 62
    move-result-wide v2

    .line 63
    iget-wide v0, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 65
    sub-long/2addr v2, v0

    .line 66
    const-wide/32 v0, 0x927c0

    .line 69
    cmp-long v0, v2, v0

    .line 71
    if-gez v0, :cond_3

    .line 73
    const/4 v0, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 v0, 0x0

    .line 76
    :goto_1
    const-string/jumbo v1, "waitingTime"

    .line 79
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    return-void
.end method

.method public static dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    iget-wide v0, p4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6
    const/16 v0, 0x20

    .line 8
    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 11
    invoke-virtual {p4}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 18
    const-string v1, "    "

    .line 20
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 25
    aget v1, v1, p5

    .line 27
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 34
    const/4 v2, 0x4

    .line 35
    if-ne v1, v2, :cond_0

    .line 37
    const-string v1, " at "

    .line 39
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 44
    aget-wide v1, v1, p5

    .line 46
    invoke-static {v1, v2, p1, p2, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 49
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 54
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object p0, p4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 59
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 63
    instance-of p1, p0, Lcom/android/server/am/BroadcastFilter;

    .line 65
    if-eqz p1, :cond_2

    .line 67
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .line 69
    const-string p1, " for registered "

    .line 71
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 77
    move-result p0

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 88
    const-string p1, " for manifest "

    .line 90
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 95
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 97
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 103
    iget-object p0, p4, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 105
    aget p0, p0, p5

    .line 107
    const/4 p1, -0x1

    .line 108
    if-eq p0, p1, :cond_3

    .line 110
    const-string p1, "    blocked until "

    .line 112
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 118
    const-string p0, ", currently at "

    .line 120
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget p0, p4, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .line 125
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 128
    const-string p0, " of "

    .line 130
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 133
    iget-object p0, p4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 138
    move-result p0

    .line 139
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 142
    :cond_3
    return-void
.end method

.method public static insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 7
    move-result-wide v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move-object v3, v2

    .line 10
    move-object v2, p0

    .line 11
    :goto_0
    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 16
    move-result-wide v3

    .line 17
    cmp-long v3, v3, v0

    .line 19
    if-lez v3, :cond_3

    .line 21
    iput-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 23
    iget-object v0, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 25
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 27
    iput-object p1, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 29
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    iput-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 35
    :cond_1
    if-ne v2, p0, :cond_2

    .line 37
    move-object p0, p1

    .line 38
    :cond_2
    return-object p0

    .line 39
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 41
    move-object v5, v3

    .line 42
    move-object v3, v2

    .line 43
    move-object v2, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iput-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 47
    iput-object p1, v3, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 49
    return-object p0
.end method

.method public static isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 18
    if-nez v0, :cond_1

    .line 20
    return v1

    .line 21
    :cond_1
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 23
    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 25
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_2
    return v1
.end method

.method public static isQueueEmpty(Ljava/util/ArrayDeque;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "PERCEPTIBLE_APP"

    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "TOP_PROCESS"

    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "CORE_UID"

    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "FOREGROUND"

    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "CONTAINS_MANIFEST"

    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "CONTAINS_INSTRUMENTED"

    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "CONTAINS_RESULT_TO"

    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "CONTAINS_INTERACTIVE"

    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "CONTAINS_PRIORITIZED"

    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "CONTAINS_ALARM"

    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "CONTAINS_ORDERED"

    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "CONTAINS_FOREGROUND"

    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "INFINITE_DEFER"

    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "FORCE_DELAYED"

    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "PERSISTENT"

    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "INSTRUMENTED"

    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "BLOCKED"

    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "MAX_PENDING"

    .line 62
    return-object p0

    .line 63
    :pswitch_13
    const-string p0, "NORMAL"

    .line 65
    return-object p0

    .line 66
    :pswitch_14
    const-string p0, "CACHED"

    .line 68
    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "EMPTY"

    .line 71
    return-object p0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 3
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 11
    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 13
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iput-object v0, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 19
    :cond_2
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 22
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 24
    return-object p0
.end method


# virtual methods
.method public addPrioritizeEarliestRequest()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    add-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 9
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 11
    return v1

    .line 12
    :cond_0
    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final describeStateLocked(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const-string/jumbo v1, "runnable at "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/lang/StringBuilder;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string/jumbo p1, "not runnable"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_0
    const-string p1, " because "

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 39
    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public final forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 12
    move-result v1

    .line 13
    or-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 16
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 19
    move-result p0

    .line 20
    or-int/2addr p0, v0

    .line 21
    return p0
.end method

.method public final forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 18
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 20
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 22
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 24
    invoke-interface {p2, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;->test(Lcom/android/server/am/BroadcastRecord;I)Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 30
    invoke-interface {p3, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 33
    const/4 v0, 0x1

    .line 34
    if-eqz p4, :cond_1

    .line 36
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 42
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return v0
.end method

.method public final getActive()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 9
    return-object p0
.end method

.method public final getActiveIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 8
    return p0
.end method

.method public final getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 13
    move-result p1

    .line 14
    const/high16 v0, -0x80000000

    .line 16
    and-int/2addr p1, v0

    .line 17
    if-eqz p1, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 21
    return-object p0

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 24
    return-object p0
.end method

.method public final getRunnableAt()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 10
    return-wide v0
.end method

.method public final isActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isDeferredUntilActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 8
    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 10
    const/16 v0, 0x8

    .line 12
    if-ne p0, v0, :cond_1

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final isProcessWarm()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 11
    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isRunnable()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 10
    const-wide v2, 0x7fffffffffffffffL

    .line 15
    cmp-long p0, v0, v2

    .line 17
    if-eqz p0, :cond_1

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final makeActiveNextPending()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 13
    add-int/2addr v1, v2

    .line 14
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 19
    if-ne v0, v1, :cond_1

    .line 21
    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 23
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    .line 25
    add-int/2addr v1, v2

    .line 26
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 31
    if-ne v0, v1, :cond_2

    .line 33
    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 35
    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    .line 37
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_3

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v0, 0x0

    .line 51
    :goto_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 53
    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 55
    iput-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 57
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 59
    iput v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 61
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 63
    if-ne v5, v2, :cond_4

    .line 65
    move v5, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move v5, v3

    .line 68
    :goto_2
    iput-boolean v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 70
    iget v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 72
    add-int/2addr v5, v2

    .line 73
    iput v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 75
    iget v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 77
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 79
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    instance-of v4, v4, Lcom/android/server/am/BroadcastFilter;

    .line 85
    if-eqz v4, :cond_5

    .line 87
    iget-boolean v4, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 89
    if-nez v4, :cond_5

    .line 91
    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 93
    if-nez v1, :cond_5

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    move v2, v3

    .line 97
    :goto_3
    add-int/2addr v2, v5

    .line 98
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 100
    iput-boolean v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 102
    iput-boolean v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 104
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 107
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 109
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 114
    return-void
.end method

.method public final onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 15
    const/4 v2, 0x1

    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 19
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 21
    if-nez v1, :cond_0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    :cond_0
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 27
    sub-int/2addr v1, v2

    .line 28
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 36
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 38
    if-nez v1, :cond_2

    .line 40
    if-eqz v0, :cond_3

    .line 42
    :cond_2
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 44
    sub-int/2addr v1, v2

    .line 45
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 47
    :cond_3
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 49
    sub-int/2addr v1, v2

    .line 50
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 52
    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 54
    if-eqz v1, :cond_5

    .line 56
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 58
    sub-int/2addr v1, v2

    .line 59
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 61
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 63
    if-eqz v1, :cond_6

    .line 65
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 67
    sub-int/2addr v1, v2

    .line 68
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 70
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 72
    if-eqz v1, :cond_9

    .line 74
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 76
    if-nez v1, :cond_7

    .line 78
    if-eqz v0, :cond_8

    .line 80
    :cond_7
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 82
    sub-int/2addr v0, v2

    .line 83
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 85
    :cond_8
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 87
    sub-int/2addr v0, v2

    .line 88
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 90
    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 92
    if-eqz v0, :cond_a

    .line 94
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 96
    sub-int/2addr v0, v2

    .line 97
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 99
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 101
    if-eqz v0, :cond_b

    .line 103
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 105
    sub-int/2addr v0, v2

    .line 106
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 108
    :cond_b
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 110
    if-eqz v0, :cond_c

    .line 112
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 114
    sub-int/2addr v0, v2

    .line 115
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 117
    :cond_c
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 119
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    instance-of p1, p1, Landroid/content/pm/ResolveInfo;

    .line 125
    if-eqz p1, :cond_d

    .line 127
    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 129
    sub-int/2addr p1, v2

    .line 130
    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 132
    :cond_d
    iput-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 134
    return-void
.end method

.method public final onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 15
    const/4 v2, 0x1

    .line 16
    add-int/2addr v1, v2

    .line 17
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 19
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 21
    if-nez v1, :cond_0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    :cond_0
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 27
    add-int/2addr v1, v2

    .line 28
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 36
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 38
    if-nez v1, :cond_2

    .line 40
    if-eqz v0, :cond_3

    .line 42
    :cond_2
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 44
    add-int/2addr v1, v2

    .line 45
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 47
    :cond_3
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 49
    add-int/2addr v1, v2

    .line 50
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 52
    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 54
    if-eqz v1, :cond_5

    .line 56
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 58
    add-int/2addr v1, v2

    .line 59
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 61
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 63
    if-eqz v1, :cond_6

    .line 65
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 67
    add-int/2addr v1, v2

    .line 68
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 70
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 72
    if-eqz v1, :cond_9

    .line 74
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 76
    if-nez v1, :cond_7

    .line 78
    if-eqz v0, :cond_8

    .line 80
    :cond_7
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 82
    add-int/2addr v0, v2

    .line 83
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 85
    :cond_8
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 87
    add-int/2addr v0, v2

    .line 88
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 90
    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 92
    if-eqz v0, :cond_a

    .line 94
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 96
    add-int/2addr v0, v2

    .line 97
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 99
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 101
    if-eqz v0, :cond_b

    .line 103
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 105
    add-int/2addr v0, v2

    .line 106
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 108
    :cond_b
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 110
    if-eqz v0, :cond_c

    .line 112
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 114
    add-int/2addr v0, v2

    .line 115
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 117
    :cond_c
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 119
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    instance-of p1, p1, Landroid/content/pm/ResolveInfo;

    .line 125
    if-eqz p1, :cond_d

    .line 127
    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 129
    add-int/2addr p1, v2

    .line 130
    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 132
    :cond_d
    iput-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 134
    return-void
.end method

.method public peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 17
    iget-object p0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 19
    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0
.end method

.method public final queueForNextBroadcast()Ljava/util/ArrayDeque;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v4, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object p0

    return-object p0
.end method

.method public final queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;
    .locals 4

    .line 3
    invoke-static {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 6
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 7
    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 9
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-gtz p0, :cond_2

    if-lt p3, p4, :cond_4

    .line 10
    :cond_2
    iget-wide p3, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget-wide v2, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p0, p3, v2

    if-gtz p0, :cond_4

    .line 11
    iget p0, v1, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object p3, v1, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p3, p3, v0

    if-ge p0, p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, p2

    :cond_4
    :goto_0
    return-object p1
.end method

.method public final setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_5

    .line 12
    iget-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 14
    if-eq v2, p2, :cond_0

    .line 16
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 20
    move p2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p2, v1

    .line 23
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 25
    if-eq v2, p3, :cond_1

    .line 27
    iput-boolean p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 31
    move p3, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p3, v1

    .line 34
    :goto_1
    or-int/2addr p2, p3

    .line 35
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 37
    if-eqz p3, :cond_2

    .line 39
    move p3, v0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move p3, v1

    .line 42
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 44
    if-eq v2, p3, :cond_3

    .line 46
    iput-boolean p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 50
    move p3, v0

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move p3, v1

    .line 53
    :goto_3
    or-int/2addr p2, p3

    .line 54
    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 56
    iget-boolean p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 58
    if-eq p3, p1, :cond_4

    .line 60
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    move v0, v1

    .line 66
    :goto_4
    or-int p0, p2, v0

    .line 68
    goto :goto_9

    .line 69
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 71
    if-eqz p1, :cond_6

    .line 73
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 77
    move p1, v0

    .line 78
    goto :goto_5

    .line 79
    :cond_6
    move p1, v1

    .line 80
    :goto_5
    iget-boolean p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 82
    if-eqz p2, :cond_7

    .line 84
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 88
    move p2, v0

    .line 89
    goto :goto_6

    .line 90
    :cond_7
    move p2, v1

    .line 91
    :goto_6
    or-int/2addr p1, p2

    .line 92
    iget-boolean p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 94
    if-eqz p2, :cond_8

    .line 96
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 100
    move p2, v0

    .line 101
    goto :goto_7

    .line 102
    :cond_8
    move p2, v1

    .line 103
    :goto_7
    or-int/2addr p1, p2

    .line 104
    iget-boolean p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 106
    if-eqz p2, :cond_9

    .line 108
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 112
    goto :goto_8

    .line 113
    :cond_9
    move v0, v1

    .line 114
    :goto_8
    or-int p0, p1, v0

    .line 116
    :goto_9
    return p0
.end method

.method public shouldBeDeferred()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 8
    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_2

    .line 13
    const/16 v1, 0x8

    .line 15
    if-ne p0, v1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :cond_2
    :goto_0
    return v0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "?"

    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ":"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "/"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 59
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "BroadcastProcessQueue{"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v1, "}"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public final traceProcessRunningBegin()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, " running"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 27
    move-result p0

    .line 28
    const-wide/16 v2, 0x40

    .line 30
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public final updateRunnableAt()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 9
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    .line 32
    if-eqz v1, :cond_1a

    .line 34
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 38
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 40
    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 42
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    .line 44
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 46
    aget v7, v7, v1

    .line 48
    if-ge v6, v7, :cond_2

    .line 50
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 52
    const/4 v0, 0x4

    .line 53
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 55
    return-void

    .line 56
    :cond_2
    iget-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    .line 58
    const-wide/16 v8, 0x0

    .line 60
    cmp-long v8, v6, v8

    .line 62
    iget-object v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    .line 64
    if-lez v8, :cond_3

    .line 66
    add-long/2addr v6, v4

    .line 67
    iput-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 69
    const/4 v0, 0x7

    .line 70
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 72
    goto/16 :goto_2

    .line 74
    :cond_3
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 76
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 78
    const/16 v8, 0xa

    .line 80
    if-le v6, v7, :cond_4

    .line 82
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 84
    add-long/2addr v0, v4

    .line 85
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 87
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 89
    goto/16 :goto_2

    .line 91
    :cond_4
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 93
    if-lez v6, :cond_5

    .line 95
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 97
    add-long/2addr v0, v4

    .line 98
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 100
    const/16 v0, 0xe

    .line 102
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 104
    goto/16 :goto_2

    .line 106
    :cond_5
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 108
    if-lez v6, :cond_6

    .line 110
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 112
    add-long/2addr v0, v4

    .line 113
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 115
    const/16 v0, 0x10

    .line 117
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 119
    goto/16 :goto_2

    .line 121
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 123
    if-eqz v6, :cond_7

    .line 125
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 127
    add-long/2addr v0, v4

    .line 128
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 130
    const/4 v0, 0x5

    .line 131
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 133
    goto/16 :goto_2

    .line 135
    :cond_7
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 137
    if-eqz v6, :cond_8

    .line 139
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    .line 141
    add-long/2addr v0, v4

    .line 142
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 144
    const/16 v0, 0x12

    .line 146
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 148
    goto/16 :goto_2

    .line 150
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 152
    const/4 v7, 0x2

    .line 153
    if-eqz v6, :cond_9

    .line 155
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 157
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 159
    if-ne v6, v7, :cond_9

    .line 161
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    .line 163
    add-long/2addr v0, v4

    .line 164
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 166
    const/16 v0, 0x14

    .line 168
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 170
    goto/16 :goto_2

    .line 172
    :cond_9
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 174
    if-eqz v6, :cond_a

    .line 176
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    .line 178
    add-long/2addr v0, v4

    .line 179
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 181
    const/4 v0, 0x6

    .line 182
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 184
    goto/16 :goto_2

    .line 186
    :cond_a
    const/16 v6, 0x3e8

    .line 188
    const/16 v10, 0x13

    .line 190
    iget v11, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 192
    if-ne v11, v6, :cond_b

    .line 194
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 196
    iput v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 198
    goto/16 :goto_2

    .line 200
    :cond_b
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 202
    if-lez v6, :cond_c

    .line 204
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 206
    const/16 v0, 0xb

    .line 208
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 210
    goto/16 :goto_2

    .line 212
    :cond_c
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 214
    if-lez v6, :cond_d

    .line 216
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 218
    const/16 v0, 0xc

    .line 220
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 222
    goto/16 :goto_2

    .line 224
    :cond_d
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 226
    iget v12, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 228
    const/16 v13, 0xd

    .line 230
    if-le v6, v12, :cond_e

    .line 232
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 234
    iput v13, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 236
    goto/16 :goto_2

    .line 238
    :cond_e
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 240
    if-lez v6, :cond_f

    .line 242
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 244
    const/16 v0, 0x11

    .line 246
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 248
    goto/16 :goto_2

    .line 250
    :cond_f
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 252
    const/16 v12, 0xf

    .line 254
    if-eqz v6, :cond_16

    .line 256
    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 258
    const/4 v7, 0x1

    .line 259
    if-nez v6, :cond_11

    .line 261
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Ljava/lang/Boolean;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_10

    .line 275
    goto :goto_1

    .line 276
    :cond_10
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    .line 278
    add-long/2addr v0, v4

    .line 279
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 281
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 283
    goto :goto_2

    .line 284
    :cond_11
    :goto_1
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 286
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 288
    if-ne v1, v6, :cond_12

    .line 290
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 292
    const/16 v0, 0x8

    .line 294
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 296
    goto :goto_2

    .line 297
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_13

    .line 303
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    .line 305
    add-long/2addr v0, v4

    .line 306
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 308
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 310
    goto :goto_2

    .line 311
    :cond_13
    iget-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 313
    if-eqz v1, :cond_14

    .line 315
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 317
    iput v13, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 319
    goto :goto_2

    .line 320
    :cond_14
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 322
    if-eqz v0, :cond_15

    .line 324
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 326
    iput v12, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 328
    goto :goto_2

    .line 329
    :cond_15
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    .line 331
    add-long/2addr v0, v4

    .line 332
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 334
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 336
    goto :goto_2

    .line 337
    :cond_16
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 339
    if-lez v0, :cond_17

    .line 341
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 343
    iput v12, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 345
    goto :goto_2

    .line 346
    :cond_17
    invoke-static {v11}, Landroid/os/UserHandle;->isCore(I)Z

    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_18

    .line 352
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 354
    iput v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 356
    goto :goto_2

    .line 357
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 359
    if-eqz v0, :cond_19

    .line 361
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 363
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 365
    const/16 v1, 0xc8

    .line 367
    if-gt v0, v1, :cond_19

    .line 369
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 371
    const/16 v0, 0x15

    .line 373
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 375
    goto :goto_2

    .line 376
    :cond_19
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    .line 378
    add-long/2addr v0, v4

    .line 379
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 381
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 383
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 388
    move-result v0

    .line 389
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 391
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 394
    move-result v1

    .line 395
    add-int/2addr v1, v0

    .line 396
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 398
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 401
    move-result v0

    .line 402
    add-int/2addr v0, v1

    .line 403
    iget v1, v9, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    .line 405
    if-lt v0, v1, :cond_1b

    .line 407
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 409
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 412
    move-result-wide v0

    .line 413
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 415
    const/4 v0, 0x3

    .line 416
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 418
    goto :goto_3

    .line 419
    :cond_1a
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 421
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 423
    :cond_1b
    :goto_3
    return-void
.end method
