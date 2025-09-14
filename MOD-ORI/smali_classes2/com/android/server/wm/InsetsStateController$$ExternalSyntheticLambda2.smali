.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    :goto_0
    if-eqz p0, :cond_2

    .line 25
    .line 26
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    .line 27
    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 34
    .line 35
    .line 36
    :cond_3
    return-void
.end method
