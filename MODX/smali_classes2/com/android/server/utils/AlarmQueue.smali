.class public abstract Lcom/android/server/utils/AlarmQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

.field public final mAlarmTag:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mDumpTitle:Ljava/lang/String;

.field public final mExactAlarm:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

.field public mLastFireTimeElapsed:J

.field public final mLock:Ljava/lang/Object;

.field public mMinTimeBetweenAlarmsMs:J

.field public final mScheduleAlarmRunnable:Lcom/android/server/utils/AlarmQueue$1;

.field public mTriggerTimeElapsed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/utils/AlarmQueue;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 9

    .line 1
    new-instance v8, Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-direct {v8}, Lcom/android/server/utils/AlarmQueue$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/server/utils/AlarmQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/AlarmQueue$1;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Lcom/android/server/utils/AlarmQueue$1;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-direct {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 7
    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    .line 9
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    .line 10
    iput-boolean p5, p0, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 12
    iput-object p8, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    const-wide/16 p1, 0x0

    cmp-long p1, p6, p1

    if-ltz p1, :cond_0

    .line 13
    iput-wide p6, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "min time between alarms must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addAlarm(JLjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v1, p3}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 11
    .line 12
    new-instance v3, Landroid/util/Pair;

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-direct {v3, p3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 25
    .line 26
    const-wide/16 v4, -0x1

    .line 27
    .line 28
    cmp-long p3, v2, v4

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    cmp-long p1, p1, v2

    .line 35
    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    :cond_0
    iget-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    .line 39
    .line 40
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 41
    .line 42
    add-long/2addr p1, v1

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 44
    .line 45
    .line 46
    :cond_1
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, " alarms:"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string p0, "NOT WAITING"

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    new-array v1, v1, [Landroid/util/Pair;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, [Landroid/util/Pair;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    array-length v2, p0

    .line 49
    if-ge v1, v2, :cond_1

    .line 50
    .line 51
    aget-object v2, p0, v1

    .line 52
    .line 53
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const-string v2, ": "

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aget-object v2, p0, v1

    .line 64
    .line 65
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 77
    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public abstract isForUser(ILjava/lang/Object;)Z
.end method

.method public final onAlarm()V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    .line 19
    .line 20
    :goto_0
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-lez v4, :cond_0

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroid/util/Pair;

    .line 35
    .line 36
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v5, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    cmp-long v5, v5, v2

    .line 45
    .line 46
    if-gtz v5, :cond_0

    .line 47
    .line 48
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    iget-wide v4, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 62
    .line 63
    add-long/2addr v2, v4

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 65
    .line 66
    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-lez v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->processExpiredAlarms(Landroid/util/ArraySet;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public abstract processExpiredAlarms(Landroid/util/ArraySet;)V
.end method

.method public final removeAlarmForKey(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 15
    .line 16
    add-long/2addr v1, v3

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final removeAlarmsForUserId(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    new-array v2, v2, [Landroid/util/Pair;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, [Landroid/util/Pair;

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    const/4 v3, 0x1

    .line 20
    sub-int/2addr v2, v3

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ltz v2, :cond_1

    .line 23
    .line 24
    aget-object v5, v1, v2

    .line 25
    .line 26
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v5}, Lcom/android/server/utils/AlarmQueue;->isForUser(ILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 35
    .line 36
    aget-object v5, v1, v2

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move v4, v3

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mLastFireTimeElapsed:J

    .line 51
    .line 52
    iget-wide v3, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 53
    .line 54
    add-long/2addr v1, v3

    .line 55
    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 56
    .line 57
    .line 58
    :cond_2
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final removeAllAlarms()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final setMinTimeBetweenAlarmsMs(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string/jumbo p1, "min time between alarms must be non-negative"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final setNextAlarmLocked(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance p2, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    iput-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/util/Pair;

    .line 31
    .line 32
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    const-wide/32 v3, 0xea60

    .line 45
    .line 46
    .line 47
    iget-wide v5, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 48
    .line 49
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iget-wide v5, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 54
    .line 55
    cmp-long v0, v5, v1

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    sub-long v0, v5, v3

    .line 60
    .line 61
    cmp-long v0, p1, v0

    .line 62
    .line 63
    if-ltz v0, :cond_1

    .line 64
    .line 65
    cmp-long v0, v5, p1

    .line 66
    .line 67
    if-gez v0, :cond_2

    .line 68
    .line 69
    :cond_1
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Lcom/android/server/utils/AlarmQueue$1;

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method
