.class Lcom/android/server/job/JobConcurrencyManager$PackageStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public numRunningEj:I

.field public numRunningRegular:I

.field public numStagedEj:I

.field public numStagedRegular:I

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public static -$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 6
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 8
    if-eqz p1, :cond_0

    .line 10
    move v0, v1

    .line 11
    :cond_0
    add-int/2addr p2, v0

    .line 12
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    .line 21
    if-eqz p1, :cond_2

    .line 23
    move v0, v1

    .line 24
    :cond_2
    add-int/2addr p2, v0

    .line 25
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    .line 31
    :goto_0
    return-void
.end method

.method public static -$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 6
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    .line 8
    if-eqz p1, :cond_0

    .line 10
    move v0, v1

    .line 11
    :cond_0
    add-int/2addr p2, v0

    .line 12
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    .line 21
    if-eqz p1, :cond_2

    .line 23
    move v0, v1

    .line 24
    :cond_2
    add-int/2addr p2, v0

    .line 25
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    .line 31
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
