.class public final Lcom/android/server/accessibility/gestures/MultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiTap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getGestureName()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, " Taps and Hold"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    const-string p0, "Triple Tap and Hold"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    const-string p0, "Double Tap and Hold"

    .line 35
    .line 36
    return-object p0
.end method

.method public final onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTap;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v3, v0

    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    move-object v5, p1

    .line 26
    move-object v6, p2

    .line 27
    move v7, p3

    .line 28
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTap;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
