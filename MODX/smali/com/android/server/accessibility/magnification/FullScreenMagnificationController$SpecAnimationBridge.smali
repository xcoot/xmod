.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

.field public final mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

.field public final mDisplayId:I

.field public mEnabled:Z

.field public final mEndMagnificationSpec:Landroid/view/MagnificationSpec;

.field public final mLock:Ljava/lang/Object;

.field public final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field public final mStartMagnificationSpec:Landroid/view/MagnificationSpec;

.field public final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/view/MagnificationSpec;

    .line 6
    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 11
    new-instance v0, Landroid/view/MagnificationSpec;

    .line 13
    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 18
    new-instance v0, Landroid/view/MagnificationSpec;

    .line 20
    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 28
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 30
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 32
    iput p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    .line 34
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 39
    move-result-wide p1

    .line 40
    new-instance p3, Landroid/animation/ValueAnimator;

    .line 42
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 45
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 47
    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 52
    const/high16 p2, 0x40200000    # 2.5f

    .line 54
    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 57
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    const/4 p1, 0x2

    .line 61
    new-array p1, p1, [F

    .line 63
    fill-array-data p1, :array_0

    .line 66
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 69
    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 72
    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    invoke-static {}, Lcom/android/server/accessibility/Flags;->fullscreenFlingGesture()Z

    .line 78
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->sendEndCallbackMainThread(Z)V

    .line 5
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->sendEndCallbackMainThread(Z)V

    .line 5
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 11
    move-result p1

    .line 12
    new-instance v1, Landroid/view/MagnificationSpec;

    .line 14
    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 19
    iget v3, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 21
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 23
    iget v5, v4, Landroid/view/MagnificationSpec;->scale:F

    .line 25
    sub-float/2addr v5, v3

    .line 26
    mul-float/2addr v5, p1

    .line 27
    add-float/2addr v5, v3

    .line 28
    iput v5, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 30
    iget v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 32
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    .line 34
    sub-float/2addr v5, v3

    .line 35
    mul-float/2addr v5, p1

    .line 36
    add-float/2addr v5, v3

    .line 37
    iput v5, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 39
    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 41
    iget v3, v4, Landroid/view/MagnificationSpec;->offsetY:F

    .line 43
    sub-float/2addr v3, v2

    .line 44
    mul-float/2addr v3, p1

    .line 45
    add-float/2addr v3, v2

    .line 46
    iput v3, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final sendEndCallbackMainThread(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->SEC_DEBUG:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string/jumbo v0, "sendEndCallbackMainThread: "

    .line 12
    const-string v1, "FullScreenMagnificationController"

    .line 14
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 19
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 21
    invoke-interface {v0, p1, v1}, Landroid/view/accessibility/MagnificationAnimationCallback;->onResult(ZLandroid/view/MagnificationSpec;)V

    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 27
    :cond_1
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 6

    .line 1
    const-string/jumbo v0, "displayID="

    .line 4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 9
    if-eq p1, v2, :cond_1

    .line 11
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 13
    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 17
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->clear()V

    .line 20
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 22
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 24
    const-wide/16 v2, 0x200

    .line 26
    invoke-virtual {p1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 34
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 36
    const-string v4, "WindowManagerInternal.setMagnificationSpec"

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    .line 45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, ";spec="

    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 55
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v4, v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 70
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 72
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    .line 74
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 76
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 79
    :cond_1
    monitor-exit v1

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->SEC_DEBUG:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "Sending: "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FullScreenMagnificationController"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 33
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 35
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 37
    const-wide/16 v0, 0x200

    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 47
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v3, "displayID="

    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v3, ";spec="

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    const-string v3, "WindowManagerInternal.setMagnificationSpec"

    .line 78
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 83
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 85
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    .line 87
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 89
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 92
    :cond_2
    return-void
.end method

.method public final updateSentSpecMainThread(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/server/accessibility/Flags;->fullscreenFlingGesture()Z

    .line 17
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 19
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    xor-int/2addr v0, v1

    .line 30
    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 34
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 41
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 43
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 48
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 50
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->sendEndCallbackMainThread(Z)V

    .line 63
    :goto_0
    monitor-exit p2

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method
