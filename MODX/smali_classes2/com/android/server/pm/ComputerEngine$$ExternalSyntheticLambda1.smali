.class public final synthetic Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/ProviderInfo;

    .line 2
    .line 3
    check-cast p2, Landroid/content/pm/ProviderInfo;

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    iget p0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 8
    .line 9
    iget p1, p2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 10
    .line 11
    if-le p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ge p0, p1, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
