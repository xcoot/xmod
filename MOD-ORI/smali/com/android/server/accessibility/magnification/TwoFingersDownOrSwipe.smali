.class public final Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDetectionDurationMillis:I

.field public final mDoubleTapTimeout:I

.field public mFirstPointerDown:Landroid/view/MotionEvent;

.field public mSecondPointerDown:Landroid/view/MotionEvent;

.field public final mSwipeMinDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x65

    .line 12
    .line 13
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x10e013f

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    iput v1, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mDetectionDurationMillis:I

    .line 33
    .line 34
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mDoubleTapTimeout:I

    .line 39
    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSwipeMinDistance:I

    .line 49
    .line 50
    return-void
.end method

.method public static distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    .line 16
    .line 17
    return-wide p0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {v2, p0, v0, p1}, Landroid/util/MathUtils;->dist(FFFF)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    float-to-double p0, p0

    .line 39
    return-wide p0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final getGestureName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TwoFingersDownOrSwipe"

    .line 2
    .line 3
    return-object p0
.end method

.method public final onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mDetectionDurationMillis:I

    .line 8
    .line 9
    int-to-long v3, v0

    .line 10
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    move-object v5, p1

    .line 19
    move-object v6, p2

    .line 20
    move v7, p3

    .line 21
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget v2, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSwipeMinDistance:I

    .line 15
    .line 16
    int-to-double v3, v2

    .line 17
    cmpl-double v0, v0, v3

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    int-to-double v5, v2

    .line 33
    cmpl-double v0, v3, v5

    .line 34
    .line 35
    if-lez v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    .line 21
    .line 22
    iget v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mDoubleTapTimeout:I

    .line 23
    .line 24
    int-to-long v3, v0

    .line 25
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    move-object v5, p1

    .line 34
    move-object v6, p2

    .line 35
    move v7, p3

    .line 36
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
