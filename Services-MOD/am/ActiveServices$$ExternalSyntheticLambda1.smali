.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 3
    check-cast p2, Lcom/android/server/am/ServiceRecord;

    .line 5
    iget-wide p0, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 7
    iget-wide v0, p2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 9
    sub-long/2addr p0, v0

    .line 10
    long-to-int p0, p0

    .line 11
    return p0
.end method
