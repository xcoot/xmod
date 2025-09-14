.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;


# instance fields
.field public final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field public mDeleteAfterUnregister:Z

.field public final mDisplayId:I

.field public mIdOfLastServiceToMagnify:I

.field public mMagnificationActivated:Z

.field public final mMagnificationBounds:Landroid/graphics/Rect;

.field public final mMagnificationRegion:Landroid/graphics/Region;

.field public mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

.field public mRegistered:Z

.field public final mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public mUnregisterPending:Z

.field public mZoomedOutFromService:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    new-instance v0, Landroid/view/MagnificationSpec;

    .line 8
    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 13
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    .line 28
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    .line 35
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 40
    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    .line 48
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 50
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 52
    iget-object v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 54
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 56
    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;I)V

    .line 59
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 61
    return-void
.end method


# virtual methods
.method public final getCenterX()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    div-float/2addr v0, v1

    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 13
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 15
    int-to-float v1, v1

    .line 16
    add-float/2addr v0, v1

    .line 17
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 19
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 21
    sub-float/2addr v0, v1

    .line 22
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 24
    div-float/2addr v0, p0

    .line 25
    return v0
.end method

.method public final getCenterY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    div-float/2addr v0, v1

    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 13
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 15
    int-to-float v1, v1

    .line 16
    add-float/2addr v0, v1

    .line 17
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 19
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 21
    sub-float/2addr v0, v1

    .line 22
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 24
    div-float/2addr v0, p0

    .line 25
    return v0
.end method

.method public final getMaxOffsetXLocked()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 5
    int-to-float v1, v0

    .line 6
    int-to-float v0, v0

    .line 7
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 9
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 11
    mul-float/2addr v0, p0

    .line 12
    sub-float/2addr v1, v0

    .line 13
    return v1
.end method

.method public final getMaxOffsetYLocked()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 5
    int-to-float v1, v0

    .line 6
    int-to-float v0, v0

    .line 7
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 9
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 11
    mul-float/2addr v0, p0

    .line 12
    sub-float/2addr v1, v0

    .line 13
    return v1
.end method

.method public final getMinOffsetXLocked()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 10
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 12
    int-to-float v1, v1

    .line 13
    add-float/2addr v1, v0

    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 16
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 18
    mul-float/2addr p0, v1

    .line 19
    sub-float/2addr v1, p0

    .line 20
    return v1
.end method

.method public final getMinOffsetYLocked()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 10
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 12
    int-to-float v1, v1

    .line 13
    add-float/2addr v1, v0

    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 16
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 18
    mul-float/2addr p0, v1

    .line 19
    sub-float/2addr v1, p0

    .line 20
    return v1
.end method

.method public final offsetMagnifiedRegion(IFF)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 8
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 10
    sub-float/2addr v1, p2

    .line 11
    iget p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 13
    sub-float/2addr p2, p3

    .line 14
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 23
    :cond_1
    const/4 p2, -0x1

    .line 24
    if-eq p1, p2, :cond_2

    .line 26
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 34
    return-void
.end method

.method public final onMagnificationChangedLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 3
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    .line 12
    move-result v2

    .line 13
    new-instance v3, Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 15
    invoke-direct {v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 22
    move-result-object v3

    .line 23
    iget-boolean v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 25
    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 47
    iget-object v4, v4, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 49
    new-instance v5, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;

    .line 51
    invoke-direct {v5, p0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 54
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 59
    if-eqz v3, :cond_0

    .line 61
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 63
    if-nez v3, :cond_0

    .line 65
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    .line 70
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 72
    if-eqz v3, :cond_1

    .line 74
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 76
    if-eqz p0, :cond_2

    .line 78
    new-instance v3, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;

    .line 80
    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;FFF)V

    .line 83
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 91
    if-eqz p0, :cond_2

    .line 93
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 99
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_2
    :goto_0
    return-void
.end method

.method public final onRectangleOnScreenRequested(IIII)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda4;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v4

    .line 18
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v5

    .line 22
    move-object v1, p0

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 26
    move-result-object p1

    .line 27
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 29
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 31
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    return-void
.end method

.method public final onUserContextChanged()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 7
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 9
    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 21
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 23
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 30
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->refreshThumbnail()V

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final refreshThumbnail()V
    .locals 7

    .line 1
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 3
    if-eqz v6, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 9
    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    .line 14
    move-result v4

    .line 15
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    .line 18
    move-result v5

    .line 19
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, v6

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Landroid/graphics/Rect;FFF)V

    .line 29
    iget-object v0, v6, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 31
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public final register()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 5
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 7
    const-wide/16 v2, 0x200

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 12
    move-result v1

    .line 13
    const-string/jumbo v4, "displayID="

    .line 16
    iget v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 18
    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v6, ";callback="

    .line 30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    const-string/jumbo v6, "setMagnificationCallbacks"

    .line 43
    invoke-static {v0, v6, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 48
    iget-object v6, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 50
    invoke-virtual {v6, v5, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    .line 53
    move-result v6

    .line 54
    iput-boolean v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 56
    if-nez v6, :cond_1

    .line 58
    const-string/jumbo p0, "set magnification callbacks fail, displayId:"

    .line 61
    const-string v0, "FullScreenMagnificationController"

    .line 63
    invoke-static {v5, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 p0, 0x0

    .line 67
    return p0

    .line 68
    :cond_1
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 70
    const/4 v7, 0x1

    .line 71
    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 74
    iget-object v6, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 76
    invoke-virtual {v6, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 82
    const-string v2, ";region="

    .line 84
    invoke-static {v5, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    const-string/jumbo v3, "getMagnificationRegion"

    .line 100
    invoke-static {v0, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 105
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 107
    invoke-virtual {v1, v5, v2}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 112
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 114
    invoke-virtual {v1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 117
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 119
    if-nez v1, :cond_3

    .line 121
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    .line 123
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 129
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->refreshThumbnail()V

    .line 134
    :cond_3
    return v7
.end method

.method public final reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 9
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setActivated(Z)Z

    .line 14
    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 19
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 22
    :cond_1
    const/4 v1, -0x1

    .line 23
    iput v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 28
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 30
    if-eqz p0, :cond_2

    .line 32
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-direct {p1, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 38
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    :cond_2
    return v2
.end method

.method public final sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 11
    iget-wide v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    .line 13
    cmp-long v0, v0, v3

    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 17
    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;-><init>(I)V

    .line 29
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 32
    move-result-object p0

    .line 33
    iget-object p1, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 35
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 37
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    :goto_0
    return-void
.end method

.method public final setActivated(Z)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 12
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 14
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 16
    new-instance v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v3, p0, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;I)V

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 27
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 29
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 31
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setFullscreenMagnificationActivated(IZ)V

    .line 34
    :cond_1
    return v0
.end method

.method public final setScale(FFF)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sget v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    sget v1, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    .line 13
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 16
    move-result v3

    .line 17
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 19
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 21
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 24
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 26
    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 35
    div-float/2addr v2, v4

    .line 36
    iget v5, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 38
    sub-float/2addr v2, v5

    .line 39
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 41
    int-to-float v5, v5

    .line 42
    add-float/2addr v2, v5

    .line 43
    div-float/2addr v2, v1

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 47
    move-result v5

    .line 48
    int-to-float v5, v5

    .line 49
    div-float/2addr v5, v4

    .line 50
    iget v4, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 52
    sub-float/2addr v5, v4

    .line 53
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 55
    int-to-float p1, p1

    .line 56
    add-float/2addr v5, p1

    .line 57
    div-float/2addr v5, v1

    .line 58
    iget p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 60
    sub-float/2addr p2, p1

    .line 61
    div-float/2addr p2, v1

    .line 62
    sub-float/2addr p3, v4

    .line 63
    div-float/2addr p3, v1

    .line 64
    sub-float/2addr v2, p2

    .line 65
    div-float/2addr v1, v3

    .line 66
    mul-float/2addr v2, v1

    .line 67
    sub-float/2addr v5, p3

    .line 68
    mul-float/2addr v5, v1

    .line 69
    add-float v4, p2, v2

    .line 71
    add-float/2addr v5, p3

    .line 72
    const/4 v7, 0x0

    .line 73
    iput v7, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 75
    const/4 v6, 0x0

    .line 76
    move-object v2, p0

    .line 77
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    .line 80
    move-result p0

    .line 81
    return p0
.end method

.method public final setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;

    .line 17
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    return v1

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setActivated(Z)Z

    .line 34
    move-result v3

    .line 35
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    .line 44
    move-result p2

    .line 45
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    .line 54
    move-result p3

    .line 55
    :cond_3
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_4

    .line 61
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 63
    iget p1, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 65
    :cond_4
    sget v4, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 67
    const/high16 v4, 0x3f800000    # 1.0f

    .line 69
    sget v5, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    .line 71
    invoke-static {p1, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 74
    move-result p1

    .line 75
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 77
    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    .line 79
    invoke-static {v4, p1}, Ljava/lang/Float;->compare(FF)I

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_5

    .line 85
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 87
    iput p1, v4, Landroid/view/MagnificationSpec;->scale:F

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    move v0, v1

    .line 91
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 93
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 96
    move-result v4

    .line 97
    int-to-float v4, v4

    .line 98
    const/high16 v5, 0x40000000    # 2.0f

    .line 100
    div-float/2addr v4, v5

    .line 101
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 103
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 105
    int-to-float v7, v7

    .line 106
    add-float/2addr v4, v7

    .line 107
    mul-float/2addr p2, p1

    .line 108
    sub-float/2addr v4, p2

    .line 109
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 112
    move-result p2

    .line 113
    int-to-float p2, p2

    .line 114
    div-float/2addr p2, v5

    .line 115
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 117
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 119
    int-to-float v5, v5

    .line 120
    add-float/2addr p2, v5

    .line 121
    mul-float/2addr p3, p1

    .line 122
    sub-float/2addr p2, p3

    .line 123
    invoke-virtual {p0, v4, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    .line 126
    move-result p1

    .line 127
    or-int/2addr p1, v0

    .line 128
    if-eqz p1, :cond_6

    .line 130
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 133
    :cond_6
    or-int/2addr p1, v3

    .line 134
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 136
    invoke-virtual {p0, p2, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 139
    iget-boolean p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 141
    if-eqz p2, :cond_7

    .line 143
    const/4 p2, -0x1

    .line 144
    if-eq p5, p2, :cond_7

    .line 146
    iput p5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 148
    iget-object p2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 150
    new-instance p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;

    .line 152
    invoke-direct {p3, p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;I)V

    .line 155
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 158
    :cond_7
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    .line 160
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DisplayMagnification[mCurrentMagnificationSpec="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mMagnificationRegion="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mMagnificationBounds="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", mDisplayId="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", mIdOfLastServiceToMagnify="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", mRegistered="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", mUnregisterPending="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    const/16 p0, 0x5d

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public final unregister(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 13
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 15
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    const-wide/16 v3, 0x200

    .line 19
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 22
    move-result v2

    .line 23
    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 25
    if-eqz v2, :cond_0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v4, "displayID="

    .line 32
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v4, ";callback=null"

    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    const-string/jumbo v4, "setMagnificationCallbacks"

    .line 50
    invoke-static {v0, v4, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 55
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    .line 61
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 63
    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 66
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 68
    if-eqz p1, :cond_1

    .line 70
    iget-object p1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    :cond_1
    move p1, v1

    .line 76
    move v2, p1

    .line 77
    :goto_0
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 79
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 82
    move-result v3

    .line 83
    if-ge p1, v3, :cond_3

    .line 85
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 93
    iget-boolean v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 95
    if-eqz v2, :cond_2

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 103
    iget-object p1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 105
    iget-boolean v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 107
    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iput-boolean v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 118
    if-eqz p1, :cond_5

    .line 120
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 122
    const/4 v2, 0x1

    .line 123
    invoke-direct {v0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 126
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 133
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 135
    return-void
.end method

.method public final updateCurrentSpecWithOffsetsLocked(FF)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->SEC_DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "updateCurrentSpecWithOffsetsLocked(nonNormOffsetX = "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", nonNormOffsetY = "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ")"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "FullScreenMagnificationController"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    .line 45
    move-result v1

    .line 46
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 49
    move-result p1

    .line 50
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 52
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 54
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x1

    .line 59
    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 63
    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 65
    move p1, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    .line 75
    move-result v2

    .line 76
    invoke-static {p2, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 79
    move-result p2

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 82
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 84
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 90
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 92
    iput p2, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v1, p1

    .line 96
    :goto_1
    return v1
.end method
