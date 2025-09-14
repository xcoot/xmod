.class public abstract Lcom/android/server/accessibility/gestures/GestureMatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

.field public final mGestureId:I

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

.field public mState:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 7
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    .line 9
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance p1, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;-><init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 18
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 20
    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const-string v0, "Unknown state: "

    .line 14
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "STATE_GESTURE_CANCELED"

    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "STATE_GESTURE_COMPLETED"

    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "STATE_GESTURE_STARTED"

    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "STATE_CLEAR"

    .line 30
    return-object p0
.end method


# virtual methods
.method public final cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

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
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 4
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 9
    return-void
.end method

.method public abstract getGestureName()Ljava/lang/String;
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_5

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v3, :cond_4

    .line 19
    if-eq v0, v2, :cond_3

    .line 21
    const/4 v2, 0x5

    .line 22
    if-eq v0, v2, :cond_2

    .line 24
    const/4 v2, 0x6

    .line 25
    if-eq v0, v2, :cond_1

    .line 27
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 42
    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 46
    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 50
    :cond_6
    :goto_0
    return-void
.end method

.method public abstract onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public abstract onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public final setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 3
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 5
    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    .line 14
    iget v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 16
    move v3, p4

    .line 17
    move-object v4, p2

    .line 18
    move-object v5, p3

    .line 19
    invoke-interface/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;->onStateChanged(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 22
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ":"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 20
    invoke-static {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
