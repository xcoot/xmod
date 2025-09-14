.class public final Lcom/android/server/utils/quota/CountQuotaTracker;
.super Lcom/android/server/utils/quota/QuotaTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALARM_TAG_CLEANUP:Ljava/lang/String;


# instance fields
.field public final mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

.field public final mCreateExecutionStats:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

.field public final mCreateLongArrayQueue:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

.field public final mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

.field public final mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

.field public final mEventCleanupAlarmListener:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;

.field public final mEventTimes:Lcom/android/server/utils/quota/UptcMap;

.field public final mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

.field public final mHandler:Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

.field public final mMaxCategoryCounts:Landroid/util/ArrayMap;

.field public mMaxPeriodMs:J

.field public mNextCleanupTimeElapsed:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "*"

    .line 2
    .line 3
    const-string v1, "CountQuotaTracker"

    .line 4
    .line 5
    const-string v2, ".cleanup*"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    .line 3
    new-instance p2, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {p2}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 4
    new-instance p2, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {p2}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    const-wide/16 p2, 0x0

    .line 5
    iput-wide p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    .line 6
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventCleanupAlarmListener:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    .line 9
    iput-wide p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    .line 10
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    .line 11
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 12
    iput-wide v0, p2, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    .line 13
    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    .line 14
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-direct {p2, p0}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    .line 15
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateLongArrayQueue:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

    .line 16
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateExecutionStats:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

    .line 17
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    return-void
.end method


# virtual methods
.method public deleteObsoleteEventsLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "CountQuotaTracker"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2
    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 7
    const-string v1, "Instantaneous events:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;-><init>(Landroid/util/IndentingPrintWriter;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 12
    const-string v1, "Cached execution stats:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;-><init>(Landroid/util/IndentingPrintWriter;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 15
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 16
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 17
    const-string v1, "Limits:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 19
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 20
    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/quota/Category;

    .line 21
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 22
    const-string v4, ": "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 24
    const-string v4, " events in "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x10b00000016L

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 31
    iget-object v4, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const-wide v5, 0x10b00000001L

    .line 32
    :try_start_0
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 33
    iget-object v9, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    iget-boolean v10, v0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    const-wide v11, 0x10800000001L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v10, 0x10800000002L

    const/4 v12, 0x0

    .line 35
    invoke-virtual {v1, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 36
    iget-object v10, v0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide v13, 0x10300000003L

    .line 38
    invoke-virtual {v1, v13, v14, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 39
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 41
    :goto_0
    iget-object v7, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v12, v7, :cond_0

    .line 42
    iget-object v7, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/utils/quota/Category;

    const-wide v8, 0x20b00000002L

    .line 43
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 44
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 46
    iget-object v15, v7, Lcom/android/server/utils/quota/Category;->mName:Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {v1, v5, v6, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 47
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 48
    iget-object v5, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    .line 49
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-wide v10, 0x10500000002L

    .line 50
    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 51
    iget-object v5, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 52
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 53
    invoke-virtual {v1, v13, v14, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 54
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v12, v12, 0x1

    const-wide v5, 0x10b00000001L

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v5, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    new-instance v6, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v7}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 57
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    .line 58
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 59
    :goto_1
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public getEvents(ILjava/lang/String;Ljava/lang/String;)Landroid/util/LongArrayQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/LongArrayQueue;

    .line 8
    .line 9
    return-object p0
.end method

.method public getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object p0

    return-object p0
.end method

.method public final getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateExecutionStats:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

    .line 3
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    iget-object v2, v1, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 4
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    iget-object v2, v1, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    iget-object v1, v1, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_1
    check-cast v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    if-eqz p4, :cond_4

    .line 13
    iget-object p4, p0, Lcom/android/server/utils/quota/QuotaTracker;->mCategorizer:Lcom/android/server/utils/quota/Categorizer;

    invoke-interface {p4, p3}, Lcom/android/server/utils/quota/Categorizer;->getCategory(Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object p4

    .line 14
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    const-wide v2, 0x7fffffffffffffffL

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 16
    invoke-virtual {v1, p4, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 17
    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p4, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 18
    iget-wide v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 20
    iget-wide v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_3

    iget v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-eq v3, p4, :cond_4

    .line 21
    :cond_3
    iput-wide v1, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 22
    iput p4, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 23
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->updateExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V

    :cond_4
    return-object v0
.end method

.method public maybeScheduleCleanupAlarmLocked()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    .line 18
    .line 19
    const-wide v1, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    iput-wide v1, v0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 29
    .line 30
    new-instance v4, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v4, v0}, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 36
    .line 37
    .line 38
    iget-wide v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    .line 39
    .line 40
    cmp-long v0, v3, v1

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    .line 46
    .line 47
    add-long/2addr v3, v0

    .line 48
    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    .line 49
    .line 50
    sub-long v0, v3, v0

    .line 51
    .line 52
    const-wide/32 v5, 0x927c0

    .line 53
    .line 54
    .line 55
    cmp-long v0, v0, v5

    .line 56
    .line 57
    if-gtz v0, :cond_2

    .line 58
    .line 59
    add-long/2addr v3, v5

    .line 60
    :cond_2
    iput-wide v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventCleanupAlarmListener:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-direct {v1, p0, v3, v4, v2}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/utils/quota/QuotaTracker;JLcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 7
    .line 8
    iget v1, v1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    move v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v0

    .line 16
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 21
    .line 22
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v2, p1, p2, v4}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v4, v2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 42
    .line 43
    iget v2, v2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 44
    .line 45
    if-ge v4, v2, :cond_2

    .line 46
    .line 47
    move v0, v3

    .line 48
    :cond_2
    move v3, v0

    .line 49
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->maybeScheduleStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    new-instance v0, Lcom/android/server/utils/quota/Uptc;

    .line 56
    .line 57
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    if-eq v1, v3, :cond_5

    .line 66
    .line 67
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    :cond_5
    return-void
.end method

.method public final noteEvent(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 10
    .line 11
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v1, p1, p2, v3}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateLongArrayQueue:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

    .line 39
    .line 40
    iget-object v6, v1, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 41
    .line 42
    invoke-virtual {v6, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Landroid/util/ArrayMap;

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v6, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 63
    invoke-virtual {v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    iget-object v6, v1, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 68
    .line 69
    invoke-virtual {v6, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Landroid/util/ArrayMap;

    .line 74
    .line 75
    if-nez v6, :cond_3

    .line 76
    .line 77
    new-instance v6, Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 83
    .line 84
    invoke-virtual {v1, p1, p2, v6}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {v6, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-object v1, v5

    .line 91
    :goto_1
    check-cast v1, Landroid/util/LongArrayQueue;

    .line 92
    .line 93
    invoke-virtual {v1, v3, v4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 101
    .line 102
    add-int/2addr v6, v2

    .line 103
    iput v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 104
    .line 105
    iget-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 106
    .line 107
    iget-wide v8, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 108
    .line 109
    add-long/2addr v8, v3

    .line 110
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    iput-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 115
    .line 116
    iget v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 117
    .line 118
    iget v7, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 119
    .line 120
    if-ne v6, v7, :cond_5

    .line 121
    .line 122
    iget-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 123
    .line 124
    sub-long/2addr v3, v6

    .line 125
    :goto_2
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->size()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-lez v6, :cond_4

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 132
    .line 133
    .line 134
    move-result-wide v6

    .line 135
    cmp-long v6, v6, v3

    .line 136
    .line 137
    if-gez v6, :cond_4

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_6

    .line 145
    :cond_4
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    iget-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 150
    .line 151
    add-long/2addr v3, v6

    .line 152
    iput-wide v3, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 153
    .line 154
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    new-instance v3, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;

    .line 159
    .line 160
    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker;ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    const/16 v1, 0x9

    .line 168
    .line 169
    if-le v7, v1, :cond_6

    .line 170
    .line 171
    mul-int/lit8 v7, v7, 0x4

    .line 172
    .line 173
    div-int/lit8 v7, v7, 0x5

    .line 174
    .line 175
    if-ne v6, v7, :cond_6

    .line 176
    .line 177
    const-string v1, "CountQuotaTracker"

    .line 178
    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p1, " has reached 80% of it\'s count limit of "

    .line 192
    .line 193
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget p1, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 197
    .line 198
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeScheduleCleanupAlarmLocked()V

    .line 209
    .line 210
    .line 211
    iget p0, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 212
    .line 213
    iget p1, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 214
    .line 215
    if-ge p0, p1, :cond_7

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_7
    const/4 v2, 0x0

    .line 219
    :goto_4
    monitor-exit v0

    .line 220
    return v2

    .line 221
    :cond_8
    :goto_5
    monitor-exit v0

    .line 222
    return v2

    .line 223
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    throw p0
.end method

.method public final setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V
    .locals 6

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p3, v0

    .line 6
    .line 7
    if-ltz v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    .line 24
    const-wide v4, 0x9a7ec800L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide p3

    .line 33
    const-wide/16 v4, 0x4e20

    .line 34
    .line 35
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->max(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide p3

    .line 39
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Long;

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-ne v3, p2, :cond_0

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    cmp-long p1, p1, p3

    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    monitor-exit v2

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    .line 74
    .line 75
    iget-object p2, p1, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 76
    .line 77
    iget-object p2, p2, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    add-int/lit8 p2, p2, -0x1

    .line 84
    .line 85
    :goto_0
    if-ltz p2, :cond_1

    .line 86
    .line 87
    iget-object p3, p1, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 88
    .line 89
    iget-object p3, p3, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    check-cast p3, Ljava/lang/Long;

    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide p3

    .line 101
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Long;->max(JJ)J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    add-int/lit8 p2, p2, -0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iput-wide v0, p1, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    .line 111
    .line 112
    iget-wide p1, p1, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    .line 113
    .line 114
    iput-wide p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 122
    .line 123
    .line 124
    move-result-wide p1

    .line 125
    new-instance p3, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;-><init>(J)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 133
    .line 134
    new-instance p2, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    invoke-direct {p2, p3}, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 140
    .line 141
    .line 142
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance p2, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;

    .line 148
    .line 149
    invoke-direct {p2, p0}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    throw p0

    .line 158
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p1, "Limit and window size must be nonnegative."

    .line 161
    .line 162
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method public updateExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 3
    .line 4
    iget v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 5
    .line 6
    const-wide v1, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-wide v1, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    iput-wide v3, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    iget-wide v5, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    .line 30
    .line 31
    add-long/2addr v5, v3

    .line 32
    iput-wide v5, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/util/LongArrayQueue;

    .line 41
    .line 42
    if-nez p0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    sub-long/2addr v1, v3

    .line 46
    iget-wide p1, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 47
    .line 48
    sub-long p1, v3, p1

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p3, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0, p3}, Landroid/util/LongArrayQueue;->get(I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    cmp-long v0, v5, p1

    .line 63
    .line 64
    if-gez v0, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    iput v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 72
    .line 73
    sub-long v7, v5, p1

    .line 74
    .line 75
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    iget v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 80
    .line 81
    iget v7, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 82
    .line 83
    if-lt v0, v7, :cond_3

    .line 84
    .line 85
    iget-wide v7, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 86
    .line 87
    iget-wide v9, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 88
    .line 89
    add-long/2addr v5, v9

    .line 90
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    iput-wide v5, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 95
    .line 96
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    :goto_2
    add-long/2addr v3, v1

    .line 100
    iput-wide v3, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 101
    .line 102
    return-void
.end method
