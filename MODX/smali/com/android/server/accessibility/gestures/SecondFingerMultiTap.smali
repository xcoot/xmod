.class public final Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBaseX:F

.field public mBaseY:F

.field public mCurrentTaps:I

.field public final mDoubleTapSlop:I

.field public mSecondFingerPointerId:I

.field public final mTargetTaps:I

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
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
    const/16 v1, 0x11

    .line 12
    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 15
    const/4 p2, 0x2

    .line 16
    iput p2, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    .line 18
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 25
    move-result p2

    .line 26
    iput p2, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mDoubleTapSlop:I

    .line 28
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    .line 38
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 41
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 44
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->clear()V

    .line 47
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    .line 4
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 6
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 8
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    .line 13
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 16
    return-void
.end method

.method public final getGestureName()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget p0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p0, v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "Second Finger "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, " Taps"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string p0, "Second Finger Triple Tap"

    .line 35
    return-object p0

    .line 36
    :cond_1
    const-string p0, "Second Finger Double Tap"

    .line 38
    return-object p0
.end method

.method public final isSecondFingerInsideSlop(ILandroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    return v2

    .line 12
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 17
    move-result v3

    .line 18
    sub-float/2addr v1, v3

    .line 19
    iget p0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 24
    move-result p2

    .line 25
    sub-float/2addr p0, p2

    .line 26
    const/4 p2, 0x0

    .line 27
    cmpl-float v0, v1, p2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-nez v0, :cond_1

    .line 32
    cmpl-float p2, p0, p2

    .line 34
    if-nez p2, :cond_1

    .line 36
    return v3

    .line 37
    :cond_1
    float-to-double v0, v1

    .line 38
    float-to-double v4, p0

    .line 39
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 42
    move-result-wide v0

    .line 43
    int-to-double p0, p1

    .line 44
    cmpg-double p0, v0, p0

    .line 46
    if-gtz p0, :cond_2

    .line 48
    move v2, v3

    .line 49
    :cond_2
    return v2
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    .line 18
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(ILandroid/view/MotionEvent;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x3

    .line 7
    if-le v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 26
    move-result v0

    .line 27
    int-to-long v5, v0

    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 30
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 33
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 35
    const/4 v4, 0x3

    .line 36
    move-object v7, p1

    .line 37
    move-object v8, p2

    .line 38
    move v9, p3

    .line 39
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 42
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 50
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 52
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 70
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mDoubleTapSlop:I

    .line 72
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(ILandroid/view/MotionEvent;)Z

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 78
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 84
    move-result p2

    .line 85
    iput p2, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 90
    move-result p1

    .line 91
    iput p1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 93
    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x2

    .line 7
    if-le v0, v2, :cond_0

    .line 9
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 16
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    .line 18
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(ILandroid/view/MotionEvent;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 27
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eq v0, v3, :cond_3

    .line 32
    if-nez v0, :cond_2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    .line 41
    add-int/2addr v0, v3

    .line 42
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    .line 44
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    .line 46
    if-ne v0, v1, :cond_4

    .line 48
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 51
    return-void

    .line 52
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 55
    :goto_1
    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 5
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
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mBaseX: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

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
    iget p0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

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
