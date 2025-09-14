.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintPredicate;


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    check-cast p4, Landroid/content/Intent;

    .line 16
    .line 17
    check-cast p5, Landroid/content/ComponentName;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    iget p3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 27
    .line 28
    if-eq p3, p0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 35
    .line 36
    invoke-virtual {p1, p4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    :goto_0
    move v0, p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 45
    .line 46
    invoke-virtual {p1, p5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    return v0
.end method
