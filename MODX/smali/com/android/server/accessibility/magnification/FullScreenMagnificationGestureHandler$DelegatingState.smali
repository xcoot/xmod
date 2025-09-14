.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;


# instance fields
.field public mLastDelegatedDownEventTime:J

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v0, v2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 18
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 24
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 30
    move-result-wide v2

    .line 31
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    .line 33
    :goto_0
    iget-object v0, v1, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 35
    if-eqz v0, :cond_2

    .line 37
    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    .line 39
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 42
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 45
    :cond_2
    return-void
.end method
