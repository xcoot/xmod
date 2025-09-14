.class public abstract Lcom/android/server/DssController$Tools;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static applyDssToConfiguration(Landroid/content/res/Configuration;F)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float/2addr v0, p1

    .line 7
    const/high16 v1, 0x3f000000    # 0.5f

    .line 9
    add-float/2addr v0, v1

    .line 10
    float-to-int v0, v0

    .line 11
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 13
    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 15
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 30
    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_3

    .line 39
    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 42
    :cond_3
    return-void
.end method

.method public static applyScaleToCompatFrame(Landroid/graphics/Rect;F)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 3
    neg-int v0, v0

    .line 4
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 6
    neg-int v1, v1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 13
    int-to-float v0, v0

    .line 14
    mul-float/2addr v0, p1

    .line 15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    add-float/2addr v0, v2

    .line 18
    float-to-int v0, v0

    .line 19
    neg-int v0, v0

    .line 20
    int-to-float v1, v1

    .line 21
    mul-float/2addr v1, p1

    .line 22
    add-float/2addr v1, v2

    .line 23
    float-to-int p1, v1

    .line 24
    neg-int p1, p1

    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 28
    return-void
.end method
