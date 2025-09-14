.class public final synthetic Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 4
    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SeamlessRotator;->finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    iput-object p0, p1, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 28
    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 37
    .line 38
    :cond_1
    :goto_0
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 39
    .line 40
    :cond_2
    return-void
.end method
