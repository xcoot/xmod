.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;->f$0:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;->f$1:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;->f$3:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 6

    .line 1
    iget-object p2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;->f$0:J

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    if-ge p2, v0, :cond_4

    .line 16
    .line 17
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;->f$1:J

    .line 28
    .line 29
    cmp-long v2, v2, v4

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-ltz v2, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget v4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;->f$3:I

    .line 53
    .line 54
    if-ne v2, v4, :cond_2

    .line 55
    .line 56
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 v3, 0x1

    .line 73
    :goto_2
    return v3
.end method
