.class public final Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field public mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field public mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field public mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field public final synthetic this$0:Lcom/android/server/wm/ScreenRotationAnimation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 5
    .line 6
    return-void
.end method

.method public static createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Point;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public final initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    .line 8
    .line 9
    iput v1, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, v3, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/DisplayContent;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 34
    .line 35
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/DisplayContent;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    .line 45
    .line 46
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda3;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    .line 55
    .line 56
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/DisplayContent;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    .line 66
    .line 67
    return-object v0
.end method

.method public final isAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 32
    .line 33
    if-eqz p0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_4

    .line 40
    .line 41
    :cond_3
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_4
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0
.end method

.method public final startAnimation(Lcom/android/server/wm/SimpleSurfaceAnimatable;Lcom/android/server/wm/WindowAnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    invoke-direct {v9, p1, p3, v0}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 15
    .line 16
    invoke-direct {v2, p2, p1}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v0, v9

    .line 32
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V

    .line 33
    .line 34
    .line 35
    return-object v9
.end method

.method public final startColorAnimation()V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BLACK_SNAPSHOT_TRANSITION:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x10e0140

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    .line 24
    .line 25
    move-result v11

    .line 26
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    new-array v10, v3, [F

    .line 32
    .line 33
    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    .line 34
    .line 35
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(FFF)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    .line 40
    .line 41
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(FFF)I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    int-to-long v3, v11

    .line 46
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    float-to-long v5, v0

    .line 51
    mul-long/2addr v5, v3

    .line 52
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;

    .line 57
    .line 58
    move-object v3, v0

    .line 59
    move-object v4, p0

    .line 60
    invoke-direct/range {v3 .. v11}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;JLandroid/animation/ArgbEvaluator;II[FI)V

    .line 61
    .line 62
    .line 63
    iget-object p0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v2, v0, p0, v1, v3}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iput-object v3, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceWidth()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iput v3, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iput v3, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SimpleSurfaceAnimatable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v3, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v3, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SimpleSurfaceAnimatable;Lcom/android/server/wm/WindowAnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 79
    .line 80
    .line 81
    return-object p0
.end method

.method public final startScreenshotAlphaAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    iput-object v2, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    iput-object v3, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceWidth()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SimpleSurfaceAnimatable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SimpleSurfaceAnimatable;Lcom/android/server/wm/WindowAnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
