.class public final Lcom/android/server/job/controllers/FlexibilityController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrefetchCacheUpdated(Landroid/util/ArraySet;ILjava/lang/String;JJJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/job/controllers/PrefetchController;->getLaunchTimeThresholdMs()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    sub-long/2addr p4, v1

    .line 15
    cmp-long p4, p4, p8

    .line 16
    .line 17
    const/4 p5, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-gez p4, :cond_0

    .line 20
    .line 21
    move p4, p5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p4, v3

    .line 24
    :goto_0
    sub-long/2addr p6, v1

    .line 25
    cmp-long p6, p6, p8

    .line 26
    .line 27
    if-gez p6, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move p5, v3

    .line 31
    :goto_1
    if-eq p5, p4, :cond_2

    .line 32
    .line 33
    iget-object p4, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 34
    .line 35
    iget-object p4, p4, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 36
    .line 37
    const-wide/16 p5, 0x0

    .line 38
    .line 39
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    invoke-virtual {p4, p2, p3, p5}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p5

    .line 47
    check-cast p5, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide p5

    .line 53
    invoke-static {p8, p9, p5, p6}, Ljava/lang/Math;->max(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide p5

    .line 57
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    invoke-virtual {p4, p2, p3, p5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_4

    .line 67
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-ge v3, p2, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-nez p3, :cond_3

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    iget-object p3, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 87
    .line 88
    iget-object p3, p3, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 89
    .line 90
    invoke-virtual {p3, p2, p8, p9}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->calculateNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 91
    .line 92
    .line 93
    iget-object p3, p0, Lcom/android/server/job/controllers/FlexibilityController$1;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 94
    .line 95
    iget-object p3, p3, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 96
    .line 97
    invoke-virtual {p3, p2, p8, p9}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 98
    .line 99
    .line 100
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    monitor-exit v0

    .line 104
    return-void

    .line 105
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method
