.class public final Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    const-wide/16 v3, 0x1388

    .line 25
    .line 26
    move-object v5, p1

    .line 27
    move-object v6, p2

    .line 28
    move v7, p3

    .line 29
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    .line 37
    .line 38
    if-le v0, v1, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
