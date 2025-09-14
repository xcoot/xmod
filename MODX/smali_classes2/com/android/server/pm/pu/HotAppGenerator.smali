.class public final Lcom/android/server/pm/pu/HotAppGenerator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DAY_INTERVAL:J

.field public static final HOUR_INTERVAL:J

.field public static final MONTH_INTERVAL:J

.field public static final WEEK_INTERVAL:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    sput-wide v3, Lcom/android/server/pm/pu/HotAppGenerator;->HOUR_INTERVAL:J

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    sput-wide v1, Lcom/android/server/pm/pu/HotAppGenerator;->DAY_INTERVAL:J

    .line 18
    .line 19
    const-wide/16 v1, 0x7

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    sput-wide v1, Lcom/android/server/pm/pu/HotAppGenerator;->WEEK_INTERVAL:J

    .line 26
    .line 27
    const-wide/16 v1, 0x1c

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    sput-wide v0, Lcom/android/server/pm/pu/HotAppGenerator;->MONTH_INTERVAL:J

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppGenerator;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo v0, "usagestats"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppGenerator;->mPm:Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    return-void
.end method

.method public static getInvertedOrder(Ljava/util/TreeSet;)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;->name:Ljava/lang/String;

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final queryAndParseUsageStats(JJLjava/util/Set;Ljava/util/function/BiConsumer;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/util/TreeSet;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance p2, Ljava/util/TreeSet;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_2

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    check-cast p3, Landroid/app/usage/UsageStats;

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    move-object v0, p5

    .line 45
    check-cast v0, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-direct {v0, v1, v2, p4}, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;-><init>(JLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;

    .line 67
    .line 68
    iget p3, p3, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 69
    .line 70
    int-to-long v1, p3

    .line 71
    invoke-direct {v0, v1, v2, p4}, Lcom/android/server/pm/pu/HotAppGenerator$ComparablePackage;-><init>(JLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/pu/HotAppGenerator;->getInvertedOrder(Ljava/util/TreeSet;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p2}, Lcom/android/server/pm/pu/HotAppGenerator;->getInvertedOrder(Ljava/util/TreeSet;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p6, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
