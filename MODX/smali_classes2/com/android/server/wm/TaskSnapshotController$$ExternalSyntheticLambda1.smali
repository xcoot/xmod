.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 33
    :goto_1
    return p0
.end method
