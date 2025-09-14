.class public final Lcom/android/server/accessibility/gestures/TouchState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mDisplayId:I

.field public mInjectedPointersDown:I

.field public mLastInjectedDownEventTime:J

.field public mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field public mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field public mLastReceivedEvent:Landroid/view/MotionEvent;

.field public mLastReceivedPolicyFlags:I

.field public mLastReceivedRawEvent:Landroid/view/MotionEvent;

.field public mLastTouchedWindowId:I

.field public final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field public mServiceDetectsGestures:Z

.field public mServiceDetectsGesturesRequested:Z

.field public mState:I


# direct methods
.method public constructor <init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDisplayId:I

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 14
    .line 15
    new-instance p1, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 21
    .line 22
    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const-string v0, "Unknown state: "

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string p0, "STATE_GESTURE_DETECTING"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "STATE_DELEGATING"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    const-string p0, "STATE_DRAGGING"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    const-string p0, "STATE_TOUCH_EXPLORING"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_4
    const-string p0, "STATE_TOUCH_INTERACTING"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_5
    const-string p0, "STATE_CLEAR"

    .line 41
    .line 42
    return-object p0
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 3
    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 20
    .line 21
    iput v0, v1, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 22
    .line 23
    iput v0, v1, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 24
    .line 25
    move v2, v0

    .line 26
    :goto_0
    const/16 v3, 0x20

    .line 27
    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    new-instance v3, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v4, v1, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 36
    .line 37
    aput-object v3, v4, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 43
    .line 44
    return-void
.end method

.method public final isInjectedPointerDown(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int p1, v0, p1

    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 5
    .line 6
    and-int/2addr p0, p1

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final isTouchExploring()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final setState(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "TouchState"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "->"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 52
    .line 53
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDisplayId:I

    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    add-int/lit8 v2, v2, -0x1

    .line 71
    .line 72
    :goto_0
    if-ltz v2, :cond_3

    .line 73
    .line 74
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 81
    .line 82
    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceDetectsGesturesEnabled(I)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    new-instance v4, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda4;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-static {v4, v3, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .line 109
    .line 110
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    monitor-exit v1

    .line 116
    goto :goto_2

    .line 117
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p0

    .line 119
    :cond_4
    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TouchState { mState: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, " }"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
