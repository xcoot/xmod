.class public final Lcom/android/server/IntentResolver$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    check-cast p2, Landroid/content/IntentFilter;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-le p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-ge p0, p1, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
