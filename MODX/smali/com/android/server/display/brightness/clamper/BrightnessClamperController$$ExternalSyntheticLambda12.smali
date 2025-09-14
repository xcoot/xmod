.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamper;

    .line 3
    check-cast p2, Lcom/android/server/display/brightness/clamper/BrightnessClamper;

    .line 5
    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 7
    iget p1, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method
