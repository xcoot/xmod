.class public final Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final adjustDexoptFlags(I)I
    .locals 0

    .line 1
    or-int/lit8 p0, p1, 0x40

    .line 2
    .line 3
    return p0
.end method

.method public final adjustDexoptNeeded(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x3

    .line 4
    return p0

    .line 5
    :cond_0
    return p1
.end method
