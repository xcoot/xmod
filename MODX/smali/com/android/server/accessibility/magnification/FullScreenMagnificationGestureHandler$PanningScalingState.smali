.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;


# static fields
.field static final CHECK_DETECTING_PASS_PERSISTED_SCALE_THRESHOLD:F = 0.2f

.field static final PASSING_PERSISTED_SCALE_THRESHOLD:F = 0.01f


# instance fields
.field public final mContext:Landroid/content/Context;

.field mDetectingPassPersistedScale:Z

.field public mInitialScaleFactor:F

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaling:Z

.field public final mScalingThreshold:F

.field public final mScrollGestureDetector:Landroid/view/GestureDetector;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    const/high16 p2, -0x40800000    # -1.0f

    .line 8
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 10
    new-instance p2, Landroid/util/TypedValue;

    .line 12
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    const v1, 0x1050110

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 26
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    .line 34
    new-instance p2, Landroid/view/ScaleGestureDetector;

    .line 36
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p2, p1, p0, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 43
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 45
    invoke-virtual {p2, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 48
    new-instance p2, Landroid/view/GestureDetector;

    .line 50
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p2, p1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 57
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 59
    return-void
.end method


# virtual methods
.method public final checkShouldDetectPassPersistedScale()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mDetectingPassPersistedScale:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 8
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 10
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 18
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 20
    iget v1, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 22
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 25
    move-result v1

    .line 26
    sub-float/2addr v0, v1

    .line 27
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 30
    move-result v0

    .line 31
    div-float/2addr v0, v1

    .line 32
    const v1, 0x3e4ccccd    # 0.2f

    .line 35
    cmpl-float v0, v0, v1

    .line 37
    if-ltz v0, :cond_1

    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mDetectingPassPersistedScale:Z

    .line 44
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x6

    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne p2, p3, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 16
    move-result p1

    .line 17
    const/4 p3, 0x2

    .line 18
    if-ne p1, p3, :cond_3

    .line 20
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 22
    iget-object p3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 24
    iget-object v3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 26
    if-ne p3, v3, :cond_3

    .line 28
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 30
    if-eqz p1, :cond_0

    .line 32
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->-$$Nest$msetScaleAndCenterToEdgeIfNeeded(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;)V

    .line 35
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 37
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 39
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 44
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 46
    iget-boolean p3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mIsWatch:Z

    .line 48
    if-nez p3, :cond_2

    .line 50
    iget-object p3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 52
    invoke-virtual {p3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 55
    move-result v3

    .line 56
    cmpg-float v1, v3, v1

    .line 58
    if-gez v1, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p3, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 63
    iget p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 65
    invoke-virtual {p3, v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 68
    :cond_2
    :goto_0
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 70
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mDetectingPassPersistedScale:Z

    .line 74
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const/4 p1, 0x1

    .line 81
    if-eq p2, p1, :cond_4

    .line 83
    const/4 p1, 0x3

    .line 84
    if-ne p2, p1, :cond_8

    .line 86
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-static {}, Lcom/android/server/accessibility/Flags;->fullscreenFlingGesture()Z

    .line 94
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 96
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 98
    if-eqz p1, :cond_5

    .line 100
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->-$$Nest$msetScaleAndCenterToEdgeIfNeeded(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;)V

    .line 103
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 105
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 107
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->clearEdgeState()V

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 112
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 114
    iget-boolean p3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mIsWatch:Z

    .line 116
    if-nez p3, :cond_7

    .line 118
    iget-object p3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 120
    invoke-virtual {p3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 123
    move-result v3

    .line 124
    cmpg-float v1, v3, v1

    .line 126
    if-gez v1, :cond_6

    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iget-object p3, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 131
    iget p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 133
    invoke-virtual {p3, v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 136
    :cond_7
    :goto_1
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 138
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mDetectingPassPersistedScale:Z

    .line 142
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 144
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 147
    :cond_8
    :goto_2
    return-void
.end method

.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_2

    .line 6
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 8
    const/4 v2, 0x0

    .line 9
    cmpg-float v0, v0, v2

    .line 11
    const/4 v2, 0x0

    .line 12
    if-gez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 24
    move-result p1

    .line 25
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 27
    sub-float/2addr p1, v0

    .line 28
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 31
    move-result p1

    .line 32
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    .line 34
    cmpl-float p1, p1, v0

    .line 36
    if-lez p1, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v2

    .line 40
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 42
    return v1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 45
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 47
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 49
    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 56
    move-result v2

    .line 57
    mul-float/2addr v2, v0

    .line 58
    sget v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->MAX_SCALE:F

    .line 60
    cmpl-float v4, v2, v3

    .line 62
    if-lez v4, :cond_3

    .line 64
    cmpl-float v4, v2, v0

    .line 66
    if-lez v4, :cond_3

    .line 68
    :goto_1
    move v2, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 72
    cmpg-float v4, v2, v3

    .line 74
    if-gez v4, :cond_4

    .line 76
    cmpg-float v0, v2, v0

    .line 78
    if-gez v0, :cond_4

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 84
    move-result v0

    .line 85
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->setScaleAndClearIfNeeded(FFF)V

    .line 92
    return v1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 3
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 5
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 7
    if-ne p1, p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    const/high16 p1, -0x40800000    # -1.0f

    .line 3
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mDetectingPassPersistedScale:Z

    .line 10
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 5
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 10
    return v3

    .line 11
    :cond_0
    sget-boolean v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_PANNING_SCALING:Z

    .line 13
    if-eqz v1, :cond_1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "Panned content by scrollX: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, " scrollY: "

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/android/server/accessibility/Flags;->fullscreenFlingGesture()Z

    .line 50
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 52
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 54
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 56
    invoke-virtual {v1, v0, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->offsetMagnifiedRegion(IFF)V

    .line 59
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 61
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 63
    if-eqz p0, :cond_2

    .line 65
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;->-$$Nest$monScrollStateChanged(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 68
    :cond_2
    return v3
.end method

.method public setScaleAndClearIfNeeded(FFF)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mDetectingPassPersistedScale:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 7
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 9
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 14
    move-result v0

    .line 15
    sub-float v1, p1, v0

    .line 17
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 20
    move-result v1

    .line 21
    div-float/2addr v1, v0

    .line 22
    const v2, 0x3c23d70a    # 0.01f

    .line 25
    cmpg-float v1, v1, v2

    .line 27
    if-gez v1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mContext:Landroid/content/Context;

    .line 31
    const-class v1, Landroid/os/Vibrator;

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/os/Vibrator;

    .line 39
    if-eqz p1, :cond_0

    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-static {v1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 49
    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 51
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mDetectingPassPersistedScale:Z

    .line 58
    move p1, v0

    .line 59
    :cond_1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_PANNING_SCALING:Z

    .line 61
    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 65
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    const-string v2, "Scaled content to: "

    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v2, "x"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 92
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 94
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 96
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 98
    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 101
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 107
    if-nez v0, :cond_3

    .line 109
    monitor-exit v2

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScale(FFF)Z

    .line 116
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->checkShouldDetectPassPersistedScale()V

    .line 120
    return-void

    .line 121
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "PanningScalingState{mInitialScaleFactor="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mScaling="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const/16 p0, 0x7d

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
