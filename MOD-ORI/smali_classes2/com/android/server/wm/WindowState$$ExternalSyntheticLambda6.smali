.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    const/16 p0, 0x80

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "cancelRevealAnim"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->addLowDebugName(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :cond_1
    return v0
.end method
