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

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 5
    .line 6
    new-instance p2, Landroid/graphics/PointF;

    .line 7
    .line 8
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 9
    .line 10
    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 14
    .line 15
    new-instance p2, Landroid/graphics/PointF;

    .line 16
    .line 17
    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 21
    .line 22
    new-instance p2, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p2, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 38
    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const v1, 0x10e013f

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v0, p2

    .line 55
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 56
    .line 57
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 66
    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 78
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

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 45
    .line 46
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 47
    .line 48
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 52
    .line 53
    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p1, "Unknown message type: "

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroid/view/MotionEvent;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return v1
.end method

.method public final isActivated()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isMultiTapTriggered(I)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    add-int/2addr p0, v2

    .line 15
    if-lt p0, p1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 20
    .line 21
    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 22
    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lt v0, p1, :cond_8

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 36
    .line 37
    iget v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 38
    .line 39
    iget v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 40
    .line 41
    if-eqz v0, :cond_8

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    sub-long/2addr v7, v9

    .line 55
    int-to-long v9, v5

    .line 56
    cmp-long v5, v7, v9

    .line 57
    .line 58
    if-ltz v5, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {v0, v4}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    int-to-double v6, v6

    .line 66
    cmpl-double v0, v4, v6

    .line 67
    .line 68
    if-ltz v0, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 74
    .line 75
    iget v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 76
    .line 77
    iget v6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    if-nez v4, :cond_5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    sub-long/2addr v7, v9

    .line 93
    int-to-long v9, v5

    .line 94
    cmp-long v5, v7, v9

    .line 95
    .line 96
    if-ltz v5, :cond_6

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    invoke-static {v0, v4}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 100
    .line 101
    .line 102
    move-result-wide v4

    .line 103
    int-to-double v6, v6

    .line 104
    cmpl-double v0, v4, v6

    .line 105
    .line 106
    if-ltz v0, :cond_7

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    move v1, v3

    .line 110
    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    .line 111
    .line 112
    if-le p1, v2, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    xor-int/2addr p1, v3

    .line 119
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mMagnificationLogger:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

    .line 122
    .line 123
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$2;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    .line 129
    .line 130
    .line 131
    :cond_9
    return v1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 34
    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    sget v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    sub-int/2addr v2, v1

    .line 44
    sput v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 45
    .line 46
    sget-object v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 47
    .line 48
    iget-object v4, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 49
    .line 50
    sput-object v4, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    iput-object v4, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 54
    .line 55
    iput-boolean v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iput-object v4, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 68
    .line 69
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 74
    .line 75
    iput p3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 76
    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 79
    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :goto_2
    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 86
    .line 87
    if-eqz p3, :cond_4

    .line 88
    .line 89
    move-object p2, p3

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iput-object v2, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 92
    .line 93
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    const/4 p3, 0x2

    .line 98
    if-eqz p2, :cond_1f

    .line 99
    .line 100
    const/4 v0, 0x3

    .line 101
    if-eq p2, v1, :cond_13

    .line 102
    .line 103
    if-eq p2, p3, :cond_8

    .line 104
    .line 105
    const/4 v1, 0x5

    .line 106
    if-eq p2, v1, :cond_6

    .line 107
    .line 108
    const/4 p1, 0x6

    .line 109
    if-eq p2, p1, :cond_5

    .line 110
    .line 111
    goto/16 :goto_d

    .line 112
    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_d

    .line 117
    .line 118
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-ne p2, p3, :cond_7

    .line 129
    .line 130
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-virtual {p2, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 148
    .line 149
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    int-to-long p1, p1

    .line 154
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    .line 156
    .line 157
    goto/16 :goto_d

    .line 158
    .line 159
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_d

    .line 163
    .line 164
    :cond_8
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 165
    .line 166
    if-eqz p2, :cond_f

    .line 167
    .line 168
    invoke-static {p2, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    iget p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 173
    .line 174
    int-to-double v6, p2

    .line 175
    cmpl-double p2, v4, v6

    .line 176
    .line 177
    if-lez p2, :cond_f

    .line 178
    .line 179
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_9

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-ne p2, v1, :cond_9

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_d

    .line 195
    .line 196
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-eqz p2, :cond_b

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-ne p2, p3, :cond_b

    .line 207
    .line 208
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 209
    .line 210
    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 211
    .line 212
    if-eqz p3, :cond_a

    .line 213
    .line 214
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 215
    .line 216
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-ne p1, v0, :cond_a

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_d

    .line 226
    .line 227
    :cond_a
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 228
    .line 229
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 230
    .line 231
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_d

    .line 238
    .line 239
    :cond_b
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 240
    .line 241
    iget-object p2, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOneFingerPanningSettingsProvider:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    .line 242
    .line 243
    iget-object p2, p2, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    if-eqz p2, :cond_e

    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-eqz p2, :cond_e

    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-ne p2, v1, :cond_e

    .line 262
    .line 263
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 264
    .line 265
    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 266
    .line 267
    if-eqz p3, :cond_c

    .line 268
    .line 269
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 270
    .line 271
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    .line 272
    .line 273
    .line 274
    move-result p2

    .line 275
    if-ne p2, v0, :cond_c

    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_d

    .line 281
    .line 282
    :cond_c
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 283
    .line 284
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 285
    .line 286
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_d

    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_d

    .line 296
    .line 297
    :cond_d
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 298
    .line 299
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mSinglePanningState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;

    .line 300
    .line 301
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_d

    .line 308
    .line 309
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_d

    .line 313
    .line 314
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-eqz p2, :cond_2b

    .line 319
    .line 320
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 321
    .line 322
    iget p3, p2, Landroid/graphics/PointF;->x:F

    .line 323
    .line 324
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 325
    .line 326
    .line 327
    move-result p3

    .line 328
    if-eqz p3, :cond_10

    .line 329
    .line 330
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 331
    .line 332
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    if-nez p2, :cond_2b

    .line 337
    .line 338
    :cond_10
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 339
    .line 340
    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 341
    .line 342
    .line 343
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-ge v3, v0, :cond_12

    .line 348
    .line 349
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 350
    .line 351
    iget v1, p2, Landroid/graphics/PointF;->y:F

    .line 352
    .line 353
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    invoke-static {v0, v1, v2, v4}, Landroid/util/MathUtils;->dist(FFFF)F

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    cmpl-float v1, p3, v0

    .line 366
    .line 367
    if-lez v1, :cond_11

    .line 368
    .line 369
    move p3, v0

    .line 370
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_12
    float-to-double p1, p3

    .line 374
    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 375
    .line 376
    int-to-double v0, p3

    .line 377
    cmpl-double p1, p1, v0

    .line 378
    .line 379
    if-lez p1, :cond_2b

    .line 380
    .line 381
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 382
    .line 383
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 384
    .line 385
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_d

    .line 392
    .line 393
    :cond_13
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 394
    .line 395
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    .line 397
    .line 398
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 399
    .line 400
    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 401
    .line 402
    iget p2, p2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 403
    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    invoke-virtual {p3, p2, v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    if-nez p2, :cond_14

    .line 417
    .line 418
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_d

    .line 422
    .line 423
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    .line 424
    .line 425
    .line 426
    move-result p2

    .line 427
    if-eqz p2, :cond_1a

    .line 428
    .line 429
    sget-boolean p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 430
    .line 431
    if-eqz p2, :cond_15

    .line 432
    .line 433
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 434
    .line 435
    iget-object p3, p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 436
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string/jumbo v2, "onTripleTap(); delayed: "

    .line 440
    .line 441
    .line 442
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 446
    .line 447
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 462
    .line 463
    .line 464
    move-result p3

    .line 465
    if-eqz p3, :cond_17

    .line 466
    .line 467
    iget-boolean p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 468
    .line 469
    if-eqz p3, :cond_16

    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_16
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 473
    .line 474
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomOff()V

    .line 475
    .line 476
    .line 477
    goto :goto_6

    .line 478
    :cond_17
    :goto_5
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 479
    .line 480
    iget-object p3, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 481
    .line 482
    iget-boolean p3, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 483
    .line 484
    if-nez p3, :cond_18

    .line 485
    .line 486
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 487
    .line 488
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 489
    .line 490
    .line 491
    move-result-object p3

    .line 492
    const/4 v0, -0x2

    .line 493
    const-string v2, "accessibility_magnification_activated"

    .line 494
    .line 495
    invoke-static {p3, v2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 496
    .line 497
    .line 498
    :cond_18
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 499
    .line 500
    iget-object p3, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 501
    .line 502
    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->showNotificationIfNeeded()V

    .line 503
    .line 504
    .line 505
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 506
    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    if-eqz p2, :cond_19

    .line 516
    .line 517
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    new-instance p2, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string/jumbo v1, "zoomOn("

    .line 523
    .line 524
    .line 525
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v1, ", "

    .line 532
    .line 533
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v1, ")"

    .line 540
    .line 541
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object p2

    .line 548
    iget-object v1, p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 549
    .line 550
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :cond_19
    iget-object p2, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 554
    .line 555
    iget v1, p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 556
    .line 557
    invoke-virtual {p2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 558
    .line 559
    .line 560
    move-result p2

    .line 561
    const/high16 v1, 0x3f800000    # 1.0f

    .line 562
    .line 563
    sget v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->MAX_SCALE:F

    .line 564
    .line 565
    invoke-static {p2, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 566
    .line 567
    .line 568
    move-result p2

    .line 569
    invoke-virtual {p3, p2, v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomToScale(FFF)V

    .line 570
    .line 571
    .line 572
    :goto_6
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 573
    .line 574
    const-string p2, "Magnification"

    .line 575
    .line 576
    invoke-static {p2}, Landroid/view/accessibility/A11yLogger;->createDimension(Ljava/lang/String;)Ljava/util/HashMap;

    .line 577
    .line 578
    .line 579
    move-result-object p2

    .line 580
    const-string p3, "A11Y9004"

    .line 581
    .line 582
    invoke-static {p1, p3, p2}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_d

    .line 589
    .line 590
    :cond_1a
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 591
    .line 592
    if-eqz p1, :cond_2b

    .line 593
    .line 594
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 595
    .line 596
    if-nez p1, :cond_1b

    .line 597
    .line 598
    if-nez p2, :cond_1b

    .line 599
    .line 600
    const-wide/16 p1, 0x0

    .line 601
    .line 602
    goto :goto_8

    .line 603
    :cond_1b
    const-wide/high16 v0, -0x8000000000000000L

    .line 604
    .line 605
    if-eqz p1, :cond_1c

    .line 606
    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 608
    .line 609
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

    .line 614
    .line 615
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 616
    .line 617
    .line 618
    move-result-wide v0

    .line 619
    :cond_1d
    sub-long/2addr v2, v0

    .line 620
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 621
    .line 622
    .line 623
    move-result-wide p1

    .line 624
    :goto_8
    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 625
    .line 626
    int-to-long v0, p3

    .line 627
    cmp-long p1, p1, v0

    .line 628
    .line 629
    if-gez p1, :cond_1e

    .line 630
    .line 631
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 632
    .line 633
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 634
    .line 635
    invoke-static {p1, p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 636
    .line 637
    .line 638
    move-result-wide p1

    .line 639
    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 640
    .line 641
    int-to-double v0, p3

    .line 642
    cmpl-double p1, p1, v0

    .line 643
    .line 644
    if-ltz p1, :cond_2b

    .line 645
    .line 646
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 647
    .line 648
    .line 649
    goto/16 :goto_d

    .line 650
    .line 651
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 652
    .line 653
    .line 654
    move-result-wide v4

    .line 655
    iput-wide v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    .line 656
    .line 657
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 658
    .line 659
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    .line 661
    .line 662
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 663
    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    invoke-virtual {p2, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 673
    .line 674
    .line 675
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 676
    .line 677
    iget-object v0, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 678
    .line 679
    iget p2, p2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 680
    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    .line 690
    .line 691
    .line 692
    move-result p2

    .line 693
    if-nez p2, :cond_20

    .line 694
    .line 695
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 696
    .line 697
    .line 698
    goto/16 :goto_d

    .line 699
    .line 700
    :cond_20
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    .line 701
    .line 702
    .line 703
    move-result p2

    .line 704
    if-eqz p2, :cond_21

    .line 705
    .line 706
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 707
    .line 708
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 709
    .line 710
    .line 711
    move-result-object p1

    .line 712
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 713
    .line 714
    .line 715
    move-result-object p1

    .line 716
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 717
    .line 718
    .line 719
    move-result p2

    .line 720
    int-to-long p2, p2

    .line 721
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 722
    .line 723
    .line 724
    goto/16 :goto_d

    .line 725
    .line 726
    :cond_21
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 727
    .line 728
    iget-boolean p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 729
    .line 730
    if-nez p1, :cond_23

    .line 731
    .line 732
    :cond_22
    :goto_9
    move v1, v3

    .line 733
    goto :goto_b

    .line 734
    :cond_23
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 735
    .line 736
    if-eqz p1, :cond_22

    .line 737
    .line 738
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 739
    .line 740
    if-nez p2, :cond_24

    .line 741
    .line 742
    goto :goto_9

    .line 743
    :cond_24
    invoke-static {p1, p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    .line 744
    .line 745
    .line 746
    move-result-wide p1

    .line 747
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 748
    .line 749
    int-to-double v4, v0

    .line 750
    cmpl-double p1, p1, v4

    .line 751
    .line 752
    if-lez p1, :cond_25

    .line 753
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

    .line 758
    .line 759
    invoke-static {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 760
    .line 761
    .line 762
    move-result p2

    .line 763
    if-lez p2, :cond_26

    .line 764
    .line 765
    move v1, p1

    .line 766
    goto :goto_b

    .line 767
    :cond_26
    if-eqz p1, :cond_22

    .line 768
    .line 769
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 770
    .line 771
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 772
    .line 773
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 774
    .line 775
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 776
    .line 777
    .line 778
    move-result-wide v4

    .line 779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 780
    .line 781
    .line 782
    move-result-wide p1

    .line 783
    sub-long/2addr v4, p1

    .line 784
    int-to-long p1, v0

    .line 785
    cmp-long p1, v4, p1

    .line 786
    .line 787
    if-ltz p1, :cond_27

    .line 788
    .line 789
    goto :goto_9

    .line 790
    :cond_27
    :goto_b
    if-eqz v1, :cond_28

    .line 791
    .line 792
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 793
    .line 794
    .line 795
    goto :goto_d

    .line 796
    :cond_28
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 797
    .line 798
    iget-boolean p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 799
    .line 800
    if-nez p1, :cond_2a

    .line 801
    .line 802
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 803
    .line 804
    .line 805
    move-result p1

    .line 806
    if-eqz p1, :cond_29

    .line 807
    .line 808
    goto :goto_c

    .line 809
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 810
    .line 811
    .line 812
    goto :goto_d

    .line 813
    :cond_2a
    :goto_c
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 814
    .line 815
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 816
    .line 817
    int-to-long v0, p0

    .line 818
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 819
    .line 820
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

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "setShortcutTriggered("

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ")"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string/jumbo p1, "com.android.server.accessibility.MagnificationController"

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DetectingState{tapCount()="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", mShortcutTriggered="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", mDelayedEventQueue="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 33
    .line 34
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 p0, 0x7d

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public transitionToDelegatingStateAndClear()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 21
    .line 22
    int-to-long v2, v2

    .line 23
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 28
    .line 29
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    add-long/2addr v4, v0

    .line 40
    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 44
    .line 45
    iget-object v4, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 46
    .line 47
    iget-object v5, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 48
    .line 49
    iget-object v6, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 50
    .line 51
    iget v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 52
    .line 53
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 60
    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 82
    .line 83
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 84
    .line 85
    invoke-virtual {p0, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v1, "onTripleTapAndHold()"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    xor-int/2addr v2, v1

    .line 25
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mMagnificationLogger:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

    .line 28
    .line 29
    check-cast v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$2;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 43
    .line 44
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 45
    .line 46
    iget-object v4, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 47
    .line 48
    iget v5, v3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const/4 v5, 0x0

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v1, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 60
    .line 61
    iget-boolean v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v1, v5

    .line 65
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 66
    .line 67
    iget-object v1, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 68
    .line 69
    iget v3, v3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 77
    .line 78
    :goto_1
    iput v1, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget-object v3, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 91
    .line 92
    iget v4, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 99
    .line 100
    iget v6, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 101
    .line 102
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale(I)F

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    sget v6, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->MAX_SCALE:F

    .line 107
    .line 108
    const/high16 v7, 0x3f800000    # 1.0f

    .line 109
    .line 110
    invoke-static {v4, v7, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iget-object v6, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 115
    .line 116
    iget v8, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 117
    .line 118
    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    iget-object v8, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 123
    .line 124
    iget v9, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 125
    .line 126
    iget-object v10, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter v10

    .line 129
    :try_start_0
    iget-object v8, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    check-cast v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 136
    .line 137
    if-eqz v8, :cond_6

    .line 138
    .line 139
    iget-boolean v9, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 140
    .line 141
    if-nez v9, :cond_5

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    iget-boolean v5, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    .line 145
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

    .line 152
    .line 153
    if-nez v0, :cond_8

    .line 154
    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_7
    add-float v4, v3, v7

    .line 159
    .line 160
    :cond_8
    :goto_4
    invoke-virtual {v1, v4, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomToScale(FFF)V

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 168
    .line 169
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
