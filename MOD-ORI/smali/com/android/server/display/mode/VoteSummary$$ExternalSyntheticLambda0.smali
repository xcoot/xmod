.class public final synthetic Lcom/android/server/display/mode/VoteSummary$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/view/Display$Mode;

    .line 2
    .line 3
    check-cast p2, Landroid/view/Display$Mode;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
