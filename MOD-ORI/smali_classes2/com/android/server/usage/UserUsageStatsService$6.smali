.class public final Lcom/android/server/usage/UserUsageStatsService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic val$beginTime:J

.field public final synthetic val$endTime:J

.field public final synthetic val$pkgs:Ljava/util/List;


# direct methods
.method public constructor <init>(JJLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$beginTime:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$endTime:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$pkgs:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 5

    .line 1
    iget-object p2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$beginTime:J

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
    if-ge p2, v0, :cond_2

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
    iget-wide v1, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 24
    .line 25
    iget-wide v3, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$endTime:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-ltz v1, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_0
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$pkgs:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService$6;->val$pkgs:Ljava/util/List;

    .line 48
    .line 49
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p0, 0x1

    .line 65
    return p0
.end method
