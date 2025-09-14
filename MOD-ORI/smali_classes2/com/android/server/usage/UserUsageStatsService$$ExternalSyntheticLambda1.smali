.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/util/ArraySet;

.field public final synthetic f$3:Landroid/util/ArraySet;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(JJLandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$0:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$2:Landroid/util/ArraySet;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$3:Landroid/util/ArraySet;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$4:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$2:Landroid/util/ArraySet;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$3:Landroid/util/ArraySet;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$0:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    :goto_0
    if-ge v1, v2, :cond_5

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$1:J

    .line 32
    .line 33
    cmp-long v4, v4, v6

    .line 34
    .line 35
    if-ltz v4, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    iget v6, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$4:I

    .line 70
    .line 71
    if-ne v5, v6, :cond_3

    .line 72
    .line 73
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    if-eqz v4, :cond_4

    .line 85
    .line 86
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const/4 p0, 0x1

    .line 93
    :goto_2
    return p0
.end method
