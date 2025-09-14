.class public final synthetic Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiPredicate;


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/wm/RecentsAnimation;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-lez p0, :cond_0

    .line 13
    .line 14
    iget p0, p2, Lcom/android/server/wm/Task;->mUserId:I

    .line 15
    .line 16
    iget v0, p1, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p1, p1, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    return p0
.end method
