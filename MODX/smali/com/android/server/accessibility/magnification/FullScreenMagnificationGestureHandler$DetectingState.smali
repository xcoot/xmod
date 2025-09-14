.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field public final mFirstPointerDownLocation:Landroid/graphics/PointF;

.field mHandler:Landroid/os/Handler;

.field public mLastDetectingDownEventTime:J

.field public mLastDown:Landroid/view/MotionEvent;

.field public mLastUp:Landroid/view/MotionEvent;

.field public final mLongTapMinDelay:I

.field public final mMultiTapMaxDelay:I

.field public final mMultiTapMaxDistance:I

.field public mPreLastDown:Landroid/view/MotionEvent;

.field public mPreLastUp:Landroid/view/MotionEvent;

.field public final mSecondPointerDownLocation:Landroid/graphics/PointF;

.field mShortcutTriggered:Z

.field public final mSwipeMinDistance:I

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 6
    new-instance p2, Landroid/graphics/PointF;

    .line 8
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 10
    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 15
    new-instance p2, Landroid/graphics/PointF;

    .line 17
    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 20
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 22
    new-instance p2, Landroid/os/Handler;

    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p2, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 31
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 36
    move-result p2

    .line 37
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 42
    move-result p2

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v0

    .line 47
    const v1, 0x10e013f

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 53
    move-result v0

    .line 54
    add-int/2addr v0, p2

    .line 55
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 57
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 64
    move-result p2

    .line 65
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 74
    move-result p2

    .line 75
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 77
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 29
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 31
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 38
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 40
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 42
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 44
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 46
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 48
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 51
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 53
    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 56
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 6
    const/4 p1, 0x2

    .line 7
    if-eq v0, p1, :cond_1

    .line 9
    const/4 p1, 0x3

    .line 10
    if-ne v0, p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 14
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p1, "Unknown message type: "

    .line 27
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    check-cast p1, Landroid/view/MotionEvent;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 49
    :goto_0
    return v1
.end method

.method public final isActivated()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 5
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isMultiTapTriggered(I)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 10
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 13
    move-result p0

    .line 14
    add-int/2addr p0, v2

    .line 15
    if-lt p0, p1, :cond_0

    .line 17
    move v1, v3

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 21
    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 23
    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 27
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 30
    move-result v0

    .line 31
    if-lt v0, p1, :cond_8

    .line 33
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 35
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 37
    iget v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 39
    iget v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 41
    if-eqz v0, :cond_8

    .line 43
    if-nez v4, :cond_2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    .line 49
    move-result-wide v7

    .line 50
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 53
    move-result-wide v9

    .line 54
    sub-long/2addr v7, v9

    .line 55
    int-to-long v9, v5

    .line 56
    cmp-long v5, v7, v9

    .line 58
    if-ltz v5, :cond_3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {v0, v4}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 64
    move-result-wide v4

    .line 65
    int-to-double v6, v6

    .line 66
    cmpl-double v0, v4, v6

    .line 68
    if-ltz v0, :cond_4

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 73
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 75
    iget v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 77
    iget v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 79
    if-eqz v0, :cond_8

    .line 81
    if-nez v4, :cond_5

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    .line 87
    move-result-wide v7

    .line 88
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 91
    move-result-wide v9

    .line 92
    sub-long/2addr v7, v9

    .line 93
    int-to-long v9, v5

    .line 94
    cmp-long v5, v7, v9

    .line 96
    if-ltz v5, :cond_6

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    invoke-static {v0, v4}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 102
    move-result-wide v4

    .line 103
    int-to-double v6, v6

    .line 104
    cmpl-double v0, v4, v6

    .line 106
    if-ltz v0, :cond_7

    .line 108
    goto :goto_0

    .line 109
    :cond_7
    move v1, v3

    .line 110
    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    .line 112
    if-le p1, v2, :cond_9

    .line 114
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 117
    move-result p1

    .line 118
    xor-int/2addr p1, v3

    .line 119
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 121
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mMagnificationLogger:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

    .line 123
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$2;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    .line 131
    :cond_9
    return v1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 10
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 27
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 29
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    sget v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 40
    const/4 v3, 0x0

    .line 41
    if-lez v2, :cond_2

    .line 43
    sub-int/2addr v2, v1

    .line 44
    sput v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 46
    sget-object v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 48
    iget-object v4, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 50
    sput-object v4, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 52
    const/4 v4, 0x0

    .line 53
    iput-object v4, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 55
    iput-boolean v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 60
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 63
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 66
    move-result-object v4

    .line 67
    iput-object v4, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 69
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 72
    move-result-object p2

    .line 73
    iput-object p2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 75
    iput p3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 80
    if-nez p2, :cond_3

    .line 82
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :goto_2
    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 87
    if-eqz p3, :cond_4

    .line 89
    move-object p2, p3

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iput-object v2, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 93
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 96
    move-result p2

    .line 97
    const/4 p3, 0x2

    .line 98
    if-eqz p2, :cond_1f

    .line 100
    const/4 v0, 0x3

    .line 101
    if-eq p2, v1, :cond_13

    .line 103
    if-eq p2, p3, :cond_8

    .line 105
    const/4 v1, 0x5

    .line 106
    if-eq p2, v1, :cond_6

    .line 108
    const/4 p1, 0x6

    .line 109
    if-eq p2, p1, :cond_5

    .line 111
    goto/16 :goto_d

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 116
    goto/16 :goto_d

    .line 118
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_7

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 127
    move-result p2

    .line 128
    if-ne p2, p3, :cond_7

    .line 130
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 135
    move-result p3

    .line 136
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 139
    move-result v1

    .line 140
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 143
    move-result p1

    .line 144
    invoke-virtual {p2, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 147
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 152
    move-result p1

    .line 153
    int-to-long p1, p1

    .line 154
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    goto/16 :goto_d

    .line 159
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 162
    goto/16 :goto_d

    .line 164
    :cond_8
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 166
    if-eqz p2, :cond_f

    .line 168
    invoke-static {p2, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 171
    move-result-wide v4

    .line 172
    iget p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 174
    int-to-double v6, p2

    .line 175
    cmpl-double p2, v4, v6

    .line 177
    if-lez p2, :cond_f

    .line 179
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_9

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 188
    move-result p2

    .line 189
    if-ne p2, v1, :cond_9

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 194
    goto/16 :goto_d

    .line 196
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 199
    move-result p2

    .line 200
    if-eqz p2, :cond_b

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 205
    move-result p2

    .line 206
    if-ne p2, p3, :cond_b

    .line 208
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 210
    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 212
    if-eqz p3, :cond_a

    .line 214
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 216
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    .line 219
    move-result p1

    .line 220
    if-ne p1, v0, :cond_a

    .line 222
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 225
    goto/16 :goto_d

    .line 227
    :cond_a
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 229
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 231
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 237
    goto/16 :goto_d

    .line 239
    :cond_b
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 241
    iget-object p2, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOneFingerPanningSettingsProvider:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    .line 243
    iget-object p2, p2, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 248
    move-result p2

    .line 249
    if-eqz p2, :cond_e

    .line 251
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 254
    move-result p2

    .line 255
    if-eqz p2, :cond_e

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 260
    move-result p2

    .line 261
    if-ne p2, v1, :cond_e

    .line 263
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 265
    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 267
    if-eqz p3, :cond_c

    .line 269
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 271
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    .line 274
    move-result p2

    .line 275
    if-ne p2, v0, :cond_c

    .line 277
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 280
    goto/16 :goto_d

    .line 282
    :cond_c
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 284
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 286
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_d

    .line 292
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 295
    goto/16 :goto_d

    .line 297
    :cond_d
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 299
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mSinglePanningState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;

    .line 301
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 307
    goto/16 :goto_d

    .line 309
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 312
    goto/16 :goto_d

    .line 314
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 317
    move-result p2

    .line 318
    if-eqz p2, :cond_2b

    .line 320
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 322
    iget p3, p2, Landroid/graphics/PointF;->x:F

    .line 324
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 327
    move-result p3

    .line 328
    if-eqz p3, :cond_10

    .line 330
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 332
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 335
    move-result p2

    .line 336
    if-nez p2, :cond_2b

    .line 338
    :cond_10
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 340
    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 343
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 346
    move-result v0

    .line 347
    if-ge v3, v0, :cond_12

    .line 349
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 351
    iget v1, p2, Landroid/graphics/PointF;->y:F

    .line 353
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 356
    move-result v2

    .line 357
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 360
    move-result v4

    .line 361
    invoke-static {v0, v1, v2, v4}, Landroid/util/MathUtils;->dist(FFFF)F

    .line 364
    move-result v0

    .line 365
    cmpl-float v1, p3, v0

    .line 367
    if-lez v1, :cond_11

    .line 369
    move p3, v0

    .line 370
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 372
    goto :goto_4

    .line 373
    :cond_12
    float-to-double p1, p3

    .line 374
    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 376
    int-to-double v0, p3

    .line 377
    cmpl-double p1, p1, v0

    .line 379
    if-lez p1, :cond_2b

    .line 381
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 383
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 385
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 391
    goto/16 :goto_d

    .line 393
    :cond_13
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 395
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 400
    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 402
    iget p2, p2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 407
    move-result v2

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 411
    move-result v3

    .line 412
    invoke-virtual {p3, p2, v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    .line 415
    move-result p2

    .line 416
    if-nez p2, :cond_14

    .line 418
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 421
    goto/16 :goto_d

    .line 423
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    .line 426
    move-result p2

    .line 427
    if-eqz p2, :cond_1a

    .line 429
    sget-boolean p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 431
    if-eqz p2, :cond_15

    .line 433
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 435
    iget-object p3, p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    const-string/jumbo v2, "onTripleTap(); delayed: "

    .line 442
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 447
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    move-result-object v0

    .line 458
    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 464
    move-result p3

    .line 465
    if-eqz p3, :cond_17

    .line 467
    iget-boolean p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 469
    if-eqz p3, :cond_16

    .line 471
    goto :goto_5

    .line 472
    :cond_16
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 474
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomOff()V

    .line 477
    goto :goto_6

    .line 478
    :cond_17
    :goto_5
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 480
    iget-object p3, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 482
    iget-boolean p3, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 484
    if-nez p3, :cond_18

    .line 486
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 488
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 491
    move-result-object p3

    .line 492
    const/4 v0, -0x2

    .line 493
    const-string v2, "accessibility_magnification_activated"

    .line 495
    invoke-static {p3, v2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 498
    :cond_18
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 500
    iget-object p3, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 502
    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->showNotificationIfNeeded()V

    .line 505
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 510
    move-result v0

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 514
    move-result p1

    .line 515
    if-eqz p2, :cond_19

    .line 517
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    new-instance p2, Ljava/lang/StringBuilder;

    .line 522
    const-string/jumbo v1, "zoomOn("

    .line 525
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, ", "

    .line 533
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 539
    const-string v1, ")"

    .line 541
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    move-result-object p2

    .line 548
    iget-object v1, p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 550
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_19
    iget-object p2, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 555
    iget v1, p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 557
    invoke-virtual {p2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 560
    move-result p2

    .line 561
    const/high16 v1, 0x3f800000    # 1.0f

    .line 563
    sget v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->MAX_SCALE:F

    .line 565
    invoke-static {p2, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 568
    move-result p2

    .line 569
    invoke-virtual {p3, p2, v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomToScale(FFF)V

    .line 572
    :goto_6
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 574
    const-string p2, "Magnification"

    .line 576
    invoke-static {p2}, Landroid/view/accessibility/A11yLogger;->createDimension(Ljava/lang/String;)Ljava/util/HashMap;

    .line 579
    move-result-object p2

    .line 580
    const-string p3, "A11Y9004"

    .line 582
    invoke-static {p1, p3, p2}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 588
    goto/16 :goto_d

    .line 590
    :cond_1a
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 592
    if-eqz p1, :cond_2b

    .line 594
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 596
    if-nez p1, :cond_1b

    .line 598
    if-nez p2, :cond_1b

    .line 600
    const-wide/16 p1, 0x0

    .line 602
    goto :goto_8

    .line 603
    :cond_1b
    const-wide/high16 v0, -0x8000000000000000L

    .line 605
    if-eqz p1, :cond_1c

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 610
    move-result-wide v2

    .line 611
    goto :goto_7

    .line 612
    :cond_1c
    move-wide v2, v0

    .line 613
    :goto_7
    if-eqz p2, :cond_1d

    .line 615
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 618
    move-result-wide v0

    .line 619
    :cond_1d
    sub-long/2addr v2, v0

    .line 620
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 623
    move-result-wide p1

    .line 624
    :goto_8
    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 626
    int-to-long v0, p3

    .line 627
    cmp-long p1, p1, v0

    .line 629
    if-gez p1, :cond_1e

    .line 631
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 633
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 635
    invoke-static {p1, p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 638
    move-result-wide p1

    .line 639
    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 641
    int-to-double v0, p3

    .line 642
    cmpl-double p1, p1, v0

    .line 644
    if-ltz p1, :cond_2b

    .line 646
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 649
    goto/16 :goto_d

    .line 651
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 654
    move-result-wide v4

    .line 655
    iput-wide v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    .line 657
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 659
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 667
    move-result v0

    .line 668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 671
    move-result v2

    .line 672
    invoke-virtual {p2, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 675
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 677
    iget-object v0, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 679
    iget p2, p2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 684
    move-result v2

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 688
    move-result v4

    .line 689
    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    .line 692
    move-result p2

    .line 693
    if-nez p2, :cond_20

    .line 695
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 698
    goto/16 :goto_d

    .line 700
    :cond_20
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    .line 703
    move-result p2

    .line 704
    if-eqz p2, :cond_21

    .line 706
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 708
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 711
    move-result-object p1

    .line 712
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 715
    move-result-object p1

    .line 716
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 719
    move-result p2

    .line 720
    int-to-long p2, p2

    .line 721
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    goto/16 :goto_d

    .line 726
    :cond_21
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 728
    iget-boolean p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 730
    if-nez p1, :cond_23

    .line 732
    :cond_22
    :goto_9
    move v1, v3

    .line 733
    goto :goto_b

    .line 734
    :cond_23
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 736
    if-eqz p1, :cond_22

    .line 738
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 740
    if-nez p2, :cond_24

    .line 742
    goto :goto_9

    .line 743
    :cond_24
    invoke-static {p1, p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 746
    move-result-wide p1

    .line 747
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 749
    int-to-double v4, v0

    .line 750
    cmpl-double p1, p1, v4

    .line 752
    if-lez p1, :cond_25

    .line 754
    move p1, v1

    .line 755
    goto :goto_a

    .line 756
    :cond_25
    move p1, v3

    .line 757
    :goto_a
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 759
    invoke-static {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 762
    move-result p2

    .line 763
    if-lez p2, :cond_26

    .line 765
    move v1, p1

    .line 766
    goto :goto_b

    .line 767
    :cond_26
    if-eqz p1, :cond_22

    .line 769
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 771
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 773
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 775
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 778
    move-result-wide v4

    .line 779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 782
    move-result-wide p1

    .line 783
    sub-long/2addr v4, p1

    .line 784
    int-to-long p1, v0

    .line 785
    cmp-long p1, v4, p1

    .line 787
    if-ltz p1, :cond_27

    .line 789
    goto :goto_9

    .line 790
    :cond_27
    :goto_b
    if-eqz v1, :cond_28

    .line 792
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 795
    goto :goto_d

    .line 796
    :cond_28
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 798
    iget-boolean p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 800
    if-nez p1, :cond_2a

    .line 802
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 805
    move-result p1

    .line 806
    if-eqz p1, :cond_29

    .line 808
    goto :goto_c

    .line 809
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 812
    goto :goto_d

    .line 813
    :cond_2a
    :goto_c
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 815
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 817
    int-to-long v0, p0

    .line 818
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 821
    :cond_2b
    :goto_d
    return-void

    .line 822
    :catchall_0
    move-exception p0

    .line 823
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    throw p0
.end method

.method public final setShortcutTriggered(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 12
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "setShortcutTriggered("

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ")"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 39
    if-eqz p1, :cond_2

    .line 41
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 43
    const-string/jumbo p1, "com.android.server.accessibility.MagnificationController"

    .line 46
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DetectingState{tapCount()="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 10
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", mShortcutTriggered="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", mDelayedEventQueue="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 34
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const/16 p0, 0x7d

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public transitionToDelegatingStateAndClear()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    .line 19
    sub-long/2addr v0, v2

    .line 20
    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 22
    int-to-long v2, v2

    .line 23
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 26
    move-result-wide v0

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 29
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 31
    iput-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 33
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 35
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    .line 38
    move-result-wide v4

    .line 39
    add-long/2addr v4, v0

    .line 40
    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 43
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 45
    iget-object v4, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 47
    iget-object v5, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 49
    iget-object v6, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 51
    iget v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 53
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 56
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 59
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 61
    if-nez v2, :cond_1

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 71
    const/4 v1, 0x2

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 77
    const/4 v1, 0x3

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 83
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 85
    invoke-virtual {p0, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 88
    return-void
.end method

.method public transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 7
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 9
    const-string/jumbo v1, "onTripleTapAndHold()"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 23
    move-result v2

    .line 24
    xor-int/2addr v2, v1

    .line 25
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 27
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mMagnificationLogger:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

    .line 29
    check-cast v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$2;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 40
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 42
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 44
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 46
    iget-object v4, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 48
    iget v5, v3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 50
    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 53
    move-result v4

    .line 54
    const/4 v5, 0x0

    .line 55
    if-eqz v4, :cond_2

    .line 57
    if-eqz v0, :cond_3

    .line 59
    iget-object v1, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 61
    iget-boolean v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v1, v5

    .line 65
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 67
    iget-object v1, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 69
    iget v3, v3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 71
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 74
    move-result v1

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 78
    :goto_1
    iput v1, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 80
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 85
    move-result v2

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 89
    move-result p1

    .line 90
    iget-object v3, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 92
    iget v4, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 94
    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 97
    move-result v3

    .line 98
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 100
    iget v6, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 102
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 105
    move-result v4

    .line 106
    sget v6, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->MAX_SCALE:F

    .line 108
    const/high16 v7, 0x3f800000    # 1.0f

    .line 110
    invoke-static {v4, v7, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 113
    move-result v4

    .line 114
    iget-object v6, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 116
    iget v8, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 118
    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 121
    move-result v6

    .line 122
    iget-object v8, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 124
    iget v9, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 126
    iget-object v10, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 128
    monitor-enter v10

    .line 129
    :try_start_0
    iget-object v8, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 131
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v8

    .line 135
    check-cast v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 137
    if-eqz v8, :cond_6

    .line 139
    iget-boolean v9, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 141
    if-nez v9, :cond_5

    .line 143
    goto :goto_2

    .line 144
    :cond_5
    iget-boolean v5, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    .line 146
    monitor-exit v10

    .line 147
    goto :goto_3

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    goto :goto_5

    .line 150
    :cond_6
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :goto_3
    if-eqz v6, :cond_8

    .line 153
    if-nez v0, :cond_8

    .line 155
    if-eqz v5, :cond_7

    .line 157
    goto :goto_4

    .line 158
    :cond_7
    add-float v4, v3, v7

    .line 160
    :cond_8
    :goto_4
    invoke-virtual {v1, v4, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomToScale(FFF)V

    .line 163
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 165
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 170
    return-void

    .line 171
    :goto_5
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    throw p0
.end method
