.class public abstract Lcom/android/server/wm/AppCompatUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_1
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public static computeAspectRatio(Landroid/graphics/Rect;)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    div-float/2addr v1, p0

    .line 25
    return v1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static getAppBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/graphics/Rect;

    .line 47
    .line 48
    return-object p0
.end method

.method public static offsetBounds(Landroid/content/res/Configuration;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
