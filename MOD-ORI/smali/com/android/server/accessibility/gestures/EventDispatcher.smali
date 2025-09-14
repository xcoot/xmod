.class public final Lcom/android/server/accessibility/gestures/EventDispatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mContext:Landroid/content/Context;

.field public mLongPressingPointerDeltaX:I

.field public mLongPressingPointerDeltaY:I

.field public mLongPressingPointerId:I

.field public mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

.field public final mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public final mTempPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Point;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final computeClickLocation(Landroid/graphics/Point;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    float-to-int v3, v3

    .line 22
    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    float-to-int v0, v0

    .line 33
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v3

    .line 40
    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lez v0, :cond_0

    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    xor-int/2addr v0, v1

    .line 54
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 58
    .line 59
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 62
    .line 63
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 64
    .line 65
    iget v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v0, v3, :cond_3

    .line 72
    .line 73
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    return v1

    .line 82
    :cond_2
    return v2

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p0

    .line 86
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_4

    .line 93
    .line 94
    return v1

    .line 95
    :cond_4
    return v2
.end method

.method public final computeInjectionAction(II)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 p1, 0x1

    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    .line 21
    return p1

    .line 22
    :cond_1
    shl-int/lit8 p0, p2, 0x8

    .line 23
    .line 24
    or-int/2addr p0, v0

    .line 25
    return p0

    .line 26
    :cond_2
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final sendAccessibilityEvent(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 18
    .line 19
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 20
    .line 21
    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Sending accessibility event"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "EventDispatcher"

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 61
    .line 62
    const/16 v0, 0x200

    .line 63
    .line 64
    if-eq p1, v0, :cond_6

    .line 65
    .line 66
    const/16 v0, 0x400

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    if-eq p1, v0, :cond_5

    .line 70
    .line 71
    const/high16 v0, 0x40000

    .line 72
    .line 73
    if-eq p1, v0, :cond_4

    .line 74
    .line 75
    const/high16 v0, 0x80000

    .line 76
    .line 77
    if-eq p1, v0, :cond_3

    .line 78
    .line 79
    const/high16 v0, 0x100000

    .line 80
    .line 81
    if-eq p1, v0, :cond_2

    .line 82
    .line 83
    const/high16 v0, 0x200000

    .line 84
    .line 85
    if-eq p1, v0, :cond_1

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    const/4 p1, 0x5

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    const/4 p1, 0x2

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method

.method public final sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 15
    .line 16
    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    shl-int v4, v6, v4

    .line 24
    .line 25
    or-int/2addr v3, v4

    .line 26
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    iget-object v11, v5, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 31
    .line 32
    move-object v6, p0

    .line 33
    move v8, v3

    .line 34
    move v9, p1

    .line 35
    move-object v10, p2

    .line 36
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public final sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 10
    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    const-string v5, "EventDispatcher"

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    move-object v2, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    :goto_1
    move-wide v8, v6

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-wide v6, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-array v14, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    new-array v15, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    move v6, v1

    .line 50
    :goto_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-ge v6, v7, :cond_2

    .line 55
    .line 56
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    .line 57
    .line 58
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v6, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 62
    .line 63
    .line 64
    aput-object v7, v15, v6

    .line 65
    .line 66
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    .line 67
    .line 68
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v6, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 72
    .line 73
    .line 74
    aput-object v7, v14, v6

    .line 75
    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v10

    .line 83
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 92
    .line 93
    .line 94
    move-result v16

    .line 95
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 96
    .line 97
    .line 98
    move-result v17

    .line 99
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 100
    .line 101
    .line 102
    move-result v18

    .line 103
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 104
    .line 105
    .line 106
    move-result v19

    .line 107
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 108
    .line 109
    .line 110
    move-result v20

    .line 111
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 112
    .line 113
    .line 114
    move-result v21

    .line 115
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getSource()I

    .line 116
    .line 117
    .line 118
    move-result v22

    .line 119
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 120
    .line 121
    .line 122
    move-result v23

    .line 123
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    .line 124
    .line 125
    .line 126
    move-result v24

    .line 127
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    .line 128
    .line 129
    .line 130
    move-result v25

    .line 131
    invoke-static/range {v8 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget v6, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 136
    .line 137
    if-ltz v6, :cond_6

    .line 138
    .line 139
    iget v7, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 140
    .line 141
    neg-int v7, v7

    .line 142
    iget v8, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 143
    .line 144
    neg-int v8, v8

    .line 145
    if-nez v7, :cond_3

    .line 146
    .line 147
    if-nez v8, :cond_3

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    invoke-static {v9}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    invoke-static {v9}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    .line 163
    .line 164
    .line 165
    move-result-object v17

    .line 166
    :goto_4
    if-ge v1, v9, :cond_5

    .line 167
    .line 168
    aget-object v10, v16, v1

    .line 169
    .line 170
    invoke-virtual {v2, v1, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 171
    .line 172
    .line 173
    aget-object v10, v17, v1

    .line 174
    .line 175
    invoke-virtual {v2, v1, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 176
    .line 177
    .line 178
    if-ne v1, v6, :cond_4

    .line 179
    .line 180
    aget-object v10, v17, v1

    .line 181
    .line 182
    iget v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 183
    .line 184
    int-to-float v12, v7

    .line 185
    add-float/2addr v11, v12

    .line 186
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 187
    .line 188
    iget v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 189
    .line 190
    int-to-float v12, v8

    .line 191
    add-float/2addr v11, v12

    .line 192
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 193
    .line 194
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_5
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 202
    .line 203
    .line 204
    move-result-wide v12

    .line 205
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 210
    .line 211
    .line 212
    move-result v15

    .line 213
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 214
    .line 215
    .line 216
    move-result v18

    .line 217
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 218
    .line 219
    .line 220
    move-result v19

    .line 221
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 222
    .line 223
    .line 224
    move-result v22

    .line 225
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 226
    .line 227
    .line 228
    move-result v23

    .line 229
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    .line 230
    .line 231
    .line 232
    move-result v24

    .line 233
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 234
    .line 235
    .line 236
    move-result v25

    .line 237
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    .line 238
    .line 239
    .line 240
    move-result v26

    .line 241
    const/high16 v20, 0x3f800000    # 1.0f

    .line 242
    .line 243
    const/high16 v21, 0x3f800000    # 1.0f

    .line 244
    .line 245
    invoke-static/range {v10 .. v26}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    :cond_6
    :goto_5
    sget-boolean v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 250
    .line 251
    if-eqz v1, :cond_7

    .line 252
    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v7, "Injecting event: "

    .line 256
    .line 257
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v7, ", policyFlags=0x"

    .line 264
    .line 265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    :cond_7
    const/high16 v6, 0x40000000    # 2.0f

    .line 283
    .line 284
    or-int v6, p3, v6

    .line 285
    .line 286
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 287
    .line 288
    if-eqz v0, :cond_8

    .line 289
    .line 290
    move-object/from16 v7, p5

    .line 291
    .line 292
    invoke-interface {v0, v2, v7, v6}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_8
    const-string v0, "Error sending event: no receiver specified."

    .line 297
    .line 298
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    const/4 v6, 0x1

    .line 317
    shl-int v5, v6, v5

    .line 318
    .line 319
    if-eqz v0, :cond_f

    .line 320
    .line 321
    if-eq v0, v6, :cond_e

    .line 322
    .line 323
    const/4 v6, 0x5

    .line 324
    if-eq v0, v6, :cond_f

    .line 325
    .line 326
    const/4 v6, 0x6

    .line 327
    if-eq v0, v6, :cond_e

    .line 328
    .line 329
    const/4 v5, 0x7

    .line 330
    if-eq v0, v5, :cond_c

    .line 331
    .line 332
    const/16 v5, 0x9

    .line 333
    .line 334
    if-eq v0, v5, :cond_c

    .line 335
    .line 336
    const/16 v5, 0xa

    .line 337
    .line 338
    if-eq v0, v5, :cond_9

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_9
    iget-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 342
    .line 343
    if-eqz v0, :cond_a

    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 346
    .line 347
    .line 348
    :cond_a
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iput-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 353
    .line 354
    iget-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 355
    .line 356
    if-eqz v0, :cond_b

    .line 357
    .line 358
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 359
    .line 360
    .line 361
    :cond_b
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    iput-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_c
    iget-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 369
    .line 370
    if-eqz v0, :cond_d

    .line 371
    .line 372
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 373
    .line 374
    .line 375
    :cond_d
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    iput-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_e
    iget v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 383
    .line 384
    not-int v5, v5

    .line 385
    and-int/2addr v0, v5

    .line 386
    iput v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 387
    .line 388
    if-nez v0, :cond_10

    .line 389
    .line 390
    const-wide/16 v5, 0x0

    .line 391
    .line 392
    iput-wide v5, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_f
    iget v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 396
    .line 397
    or-int/2addr v0, v5

    .line 398
    iput v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 399
    .line 400
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 401
    .line 402
    .line 403
    move-result-wide v5

    .line 404
    iput-wide v5, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    .line 405
    .line 406
    :cond_10
    :goto_7
    if-eqz v1, :cond_11

    .line 407
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v1, "Injected pointer:\n"

    .line 411
    .line 412
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchState;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    const-string v1, "TouchState"

    .line 427
    .line 428
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    :cond_11
    if-eq v2, v3, :cond_12

    .line 432
    .line 433
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 434
    .line 435
    .line 436
    :cond_12
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    move-object v1, v0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    const-string/jumbo v2, "sendMotionEvent: Failed to split motion event: "

    .line 442
    .line 443
    .line 444
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "=========================\nDown pointers #"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " [ "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    const/16 v2, 0x20

    .line 26
    .line 27
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " "

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p0, "]\n========================="

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
