.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/util/ArraySet;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$0:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    .line 11
    .line 12
    iput-boolean p7, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$0:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :goto_0
    if-ge v0, v1, :cond_5

    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-wide v3, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 26
    .line 27
    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$1:J

    .line 28
    .line 29
    cmp-long v3, v3, v5

    .line 30
    .line 31
    if-ltz v3, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$4:Z

    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_3
    if-eqz v3, :cond_4

    .line 65
    .line 66
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    const/4 p0, 0x1

    .line 80
    :goto_2
    return p0
.end method
