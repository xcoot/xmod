.class public final Lcom/android/server/pm/WatchedIntentResolver$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/pm/WatchedIntentFilter;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    iget-object p1, p2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-le p0, p1, :cond_0

    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-ge p0, p1, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method
