.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 3
    check-cast p2, Landroid/util/Pair;

    .line 5
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 9
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 11
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 15
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method
