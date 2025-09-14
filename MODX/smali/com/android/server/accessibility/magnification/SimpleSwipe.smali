.class public final Lcom/android/server/accessibility/magnification/SimpleSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDetectionDurationMillis:I

.field public mLastDown:Landroid/view/MotionEvent;

.field public final mSwipeMinDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x66

    .line 13
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 16
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mSwipeMinDistance:I

    .line 26
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object p1

    .line 34
    const v1, 0x10e013f

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 40
    move-result p1

    .line 41
    add-int/2addr p1, v0

    .line 42
    iput p1, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mDetectionDurationMillis:I

    .line 44
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    .line 11
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 14
    return-void
.end method

.method public final getGestureName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SimpleSwipe"

    .line 3
    return-object p0
.end method

.method public final onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    .line 7
    iget v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mDetectionDurationMillis:I

    .line 9
    int-to-long v3, v0

    .line 10
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 12
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 15
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

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

    .line 24
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 8
    move-result-wide v0

    .line 9
    iget v2, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mSwipeMinDistance:I

    .line 11
    int-to-double v2, v2

    .line 12
    cmpl-double v0, v0, v2

    .line 14
    if-lez v0, :cond_0

    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 20
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

.method public final onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 8
    move-result-wide v0

    .line 9
    iget v2, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mSwipeMinDistance:I

    .line 11
    int-to-double v2, v2

    .line 12
    cmpl-double v0, v0, v2

    .line 14
    if-lez v0, :cond_0

    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 25
    :goto_0
    return-void
.end method
