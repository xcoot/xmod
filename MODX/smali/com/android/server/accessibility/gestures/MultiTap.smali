.class public Lcom/android/server/accessibility/gestures/MultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBaseX:F

.field public mBaseY:F

.field public mCurrentTaps:I

.field public final mDoubleTapSlop:I

.field public final mTargetTaps:I

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 13
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 22
    move-result p2

    .line 23
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mDoubleTapSlop:I

    .line 25
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 32
    move-result p1

    .line 33
    mul-int/lit8 p1, p1, 0x2

    .line 35
    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    .line 37
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 40
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 43
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiTap;->clear()V

    .line 46
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    .line 4
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 6
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 8
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 10
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 13
    return-void
.end method

.method public getGestureName()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p0, v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, " Taps"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    const-string p0, "Triple Tap"

    .line 33
    return-object p0

    .line 34
    :cond_1
    const-string p0, "Double Tap"

    .line 36
    return-object p0
.end method

.method public final isInsideSlop(ILandroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 6
    move-result v1

    .line 7
    sub-float/2addr v0, v1

    .line 8
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 13
    move-result p2

    .line 14
    sub-float/2addr p0, p2

    .line 15
    const/4 p2, 0x0

    .line 16
    cmpl-float v1, v0, p2

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_0

    .line 21
    cmpl-float p2, p0, p2

    .line 23
    if-nez p2, :cond_0

    .line 25
    return v2

    .line 26
    :cond_0
    float-to-double v0, v0

    .line 27
    float-to-double v3, p0

    .line 28
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 31
    move-result-wide v0

    .line 32
    int-to-double p0, p1

    .line 33
    cmpg-double p0, v0, p0

    .line 35
    if-gtz p0, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :goto_0
    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 4
    move-result v0

    .line 5
    int-to-long v3, v0

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 13
    const/4 v2, 0x3

    .line 14
    move-object v5, p1

    .line 15
    move-object v6, p2

    .line 16
    move v7, p3

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 20
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 48
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mDoubleTapSlop:I

    .line 50
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(ILandroid/view/MotionEvent;)Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x3

    .line 57
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 72
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    .line 74
    const/4 v1, 0x1

    .line 75
    add-int/2addr v0, v1

    .line 76
    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    .line 78
    if-ne v0, v2, :cond_2

    .line 80
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 83
    :cond_2
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(ILandroid/view/MotionEvent;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 13
    :cond_0
    return-void
.end method

.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 5
    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 5
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 4
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(ILandroid/view/MotionEvent;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v0, v2, :cond_2

    .line 21
    if-nez v0, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    .line 33
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    .line 35
    if-ne v0, v1, :cond_3

    .line 37
    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 41
    return-void

    .line 42
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 45
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", Taps:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mBaseX: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", mBaseY: "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 44
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
