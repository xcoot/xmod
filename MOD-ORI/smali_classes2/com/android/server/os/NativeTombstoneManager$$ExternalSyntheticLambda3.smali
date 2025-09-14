.class public final synthetic Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 2
    .line 3
    check-cast p2, Landroid/app/ApplicationExitInfo;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    sub-long/2addr v0, p0

    .line 14
    const-wide/16 p0, 0x0

    .line 15
    .line 16
    cmp-long p0, v0, p0

    .line 17
    .line 18
    if-gez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-nez p0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    :goto_0
    return p0
.end method
