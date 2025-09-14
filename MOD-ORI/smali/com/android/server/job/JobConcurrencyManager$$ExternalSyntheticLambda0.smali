.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    iput p0, p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    .line 5
    .line 6
    iput p0, p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    .line 7
    .line 8
    return-void
.end method
