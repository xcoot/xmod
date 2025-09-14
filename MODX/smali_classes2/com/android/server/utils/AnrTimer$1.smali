.class public final Lcom/android/server/utils/AnrTimer$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/utils/AnrTimer;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/utils/AnrTimer;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p2, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
