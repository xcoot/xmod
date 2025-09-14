.class public final Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final IMPORTANCE_NAMES:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCount:[I

.field public final mCounterNames:[Ljava/lang/String;

.field public final mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "high"

    .line 2
    .line 3
    const-string/jumbo v5, "max"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "none"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "min"

    .line 10
    .line 11
    .line 12
    const-string v2, "low"

    .line 13
    .line 14
    const-string v3, "default"

    .line 15
    .line 16
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x6

    .line 7
    new-array v0, p1, [I

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 10
    .line 11
    new-array v0, p1, [Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    :goto_0
    if-ge p2, p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object v2, v2, p2

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    aput-object v1, v0, p2

    .line 44
    .line 45
    add-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final increment(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    aget v0, p0, p1

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    aput v0, p0, p1

    .line 20
    .line 21
    return-void
.end method

.method public final maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x6

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 6
    .line 7
    aget v1, v1, v0

    .line 8
    .line 9
    iget-object v2, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 10
    .line 11
    aget v2, v2, v0

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    .line 19
    .line 20
    aget-object v3, v3, v0

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ": ["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    const/4 v2, 0x6

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 21
    .line 22
    aget v2, v2, v1

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    if-ge v1, v2, :cond_0

    .line 29
    .line 30
    const-string v2, ", "

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p0, "]"

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x6

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 6
    .line 7
    aget v1, v1, v0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 10
    .line 11
    aput v1, v2, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method
