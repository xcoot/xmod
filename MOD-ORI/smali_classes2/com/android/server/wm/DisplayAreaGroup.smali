.class Lcom/android/server/wm/DisplayAreaGroup;
.super Lcom/android/server/wm/RootDisplayArea;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x1

    if-ge v1, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ge v1, p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-eq p1, p0, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method


# virtual methods
.method public bridge synthetic canShowTransient()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getOrientation(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->reverseOrientation(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    :cond_0
    return p1
.end method

.method public getRequestedVisibleTypes()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic getWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public bridge synthetic hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    return-void
.end method

.method public isOrientationDifferentFromDisplay()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRequestedVisible(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic notifyInsetsControlChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 38
    .line 39
    const/4 p1, 0x2

    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne p0, v1, :cond_2

    .line 42
    .line 43
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-ne p0, p1, :cond_3

    .line 47
    .line 48
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic setImeInputTargetRequestedVisibility(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public bridge synthetic showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    return-void
.end method
