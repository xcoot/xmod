.class public final Lcom/android/server/alarm/LazyAlarmStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore;


# static fields
.field static final TAG:Ljava/lang/String; = "LazyAlarmStore"

.field public static final sDecreasingTimeOrder:Ljava/util/Comparator;


# instance fields
.field public final mAlarms:Ljava/util/ArrayList;

.field public mOnAlarmClockRemoved:Ljava/lang/Runnable;

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/alarm/LazyAlarmStore$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    .line 20
    const-string v3, " stats"

    .line 22
    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "GET_NEXT_WAKEUP_DELIVERY_TIME"

    .line 28
    const-string v3, "GET_COUNT"

    .line 30
    const-string v4, "GET_NEXT_DELIVERY_TIME"

    .line 32
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    iput-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 41
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " pending alarms: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 30
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 32
    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 35
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 38
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 43
    return-void
.end method

.method public final getCount(Ljava/util/function/Predicate;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 6
    move-result-wide v1

    .line 7
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    const/4 v3, 0x0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 26
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x2

    .line 36
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 39
    return v3
.end method

.method public final getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 19
    iget v2, v1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 21
    and-int/lit8 v2, v2, 0x2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 14
    :goto_0
    if-ltz v1, :cond_3

    .line 16
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 24
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 30
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 38
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 40
    if-eqz v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    .line 44
    if-eqz v3, :cond_0

    .line 46
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 49
    :cond_0
    sget-object v3, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 51
    iget v3, v2, Lcom/android/server/alarm/Alarm;->uid:I

    .line 53
    const/16 v4, 0x3e8

    .line 55
    if-ne v3, v4, :cond_1

    .line 57
    const-string v3, "TIME_TICK"

    .line 59
    iget-object v4, v2, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 67
    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    .line 69
    const-string v4, "Removed TIME_TICK alarm"

    .line 71
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    return-object v0
.end method

.method public final updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 20
    invoke-interface {p1, v2}, Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;->updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z

    .line 23
    move-result v2

    .line 24
    or-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 28
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 30
    sget-object p1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 32
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35
    :cond_1
    return v1
.end method
