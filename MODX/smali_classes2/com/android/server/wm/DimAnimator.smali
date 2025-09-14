.class public final Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContainer:Lcom/android/server/wm/WindowContainer;

.field public final mContext:Landroid/content/Context;

.field mDimAnimationLayer:Landroid/view/SurfaceControl;

.field public mTransitType:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/DimAnimator;->mTransitType:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/wm/DimAnimator;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final canCreateDimAnimationLayer(IZLandroid/view/WindowManager$LayoutParams;Landroid/window/TransitionInfo$Change;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    if-eqz p4, :cond_2

    .line 30
    .line 31
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    const/4 v0, 0x6

    .line 36
    if-ne p4, v0, :cond_2

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    if-eqz p3, :cond_4

    .line 40
    .line 41
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 42
    .line 43
    cmpl-float v0, p4, v1

    .line 44
    .line 45
    if-lez v0, :cond_3

    .line 46
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpg-float p4, p4, v0

    .line 50
    .line 51
    if-gez p4, :cond_3

    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 55
    .line 56
    invoke-static {p3}, Lcom/android/internal/policy/TransitionAnimation;->isDefaultPackageAnimRes(I)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_4

    .line 61
    .line 62
    return v2

    .line 63
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iget-boolean p3, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 68
    .line 69
    if-nez p3, :cond_5

    .line 70
    .line 71
    return v2

    .line 72
    :cond_5
    const/4 p3, 0x1

    .line 73
    if-eq p1, p3, :cond_8

    .line 74
    .line 75
    const/4 p4, 0x2

    .line 76
    if-eq p1, p4, :cond_6

    .line 77
    .line 78
    const/4 p4, 0x3

    .line 79
    if-eq p1, p4, :cond_8

    .line 80
    .line 81
    const/4 p4, 0x4

    .line 82
    if-eq p1, p4, :cond_6

    .line 83
    .line 84
    return v2

    .line 85
    :cond_6
    if-nez p2, :cond_7

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_7
    return v2

    .line 89
    :cond_8
    if-eqz p2, :cond_b

    .line 90
    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_b

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_9

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_9
    new-instance p1, Lcom/android/server/wm/DimAnimator$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_a

    .line 114
    .line 115
    return v2

    .line 116
    :cond_a
    return p3

    .line 117
    :cond_b
    :goto_1
    return v2
.end method

.method public createDimAnimationLayer(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/wm/DimAnimator;->mTransitType:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "DimAnimationLayer for "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "WindowContainer#createAnimatingDimLayer"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public final finishDimAnimation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/android/server/wm/DimAnimator;->mTransitType:I

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x2

    .line 41
    and-int/2addr p1, p0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
