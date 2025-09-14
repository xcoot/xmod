.class public final synthetic Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 12
    .line 13
    mul-int/2addr p0, v0

    .line 14
    div-int/lit16 p0, p0, 0xa0

    .line 15
    .line 16
    iput p0, p1, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
