.class public final Lcom/android/server/accessibility/gestures/TouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureManifold$Listener;


# static fields
.field public static final DEBUG:Z

.field public static SEC_DEBUG:Z


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mContext:Landroid/content/Context;

.field public mDetermineUserIntentTimeout:I

.field public final mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

.field public final mDisplayId:I

.field public final mDoubleTapSlop:I

.field public mDraggingPointerId:I

.field public final mEdgeSwipeHeightPixels:F

.field public final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

.field public mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

.field public final mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

.field public final mHandler:Landroid/os/Handler;

.field public final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field public final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

.field public final mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

.field public final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

.field public final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

.field public final mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

.field public final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TouchExplorer"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 7
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 15
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 17
    new-instance v1, Lcom/android/server/accessibility/gestures/TouchState;

    .line 19
    invoke-direct {v1, v0, p2}, Lcom/android/server/accessibility/gestures/TouchState;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 22
    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 24
    iget-object v0, v1, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 26
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 28
    new-instance v0, Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 30
    iget-object v2, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 32
    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V

    .line 35
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 37
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 40
    move-result p2

    .line 41
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 43
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 50
    move-result p2

    .line 51
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    .line 53
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 60
    move-result p2

    .line 61
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchSlop:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    move-result-object p2

    .line 71
    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 73
    const v0, 0x40228f5c    # 2.54f

    .line 76
    div-float/2addr p2, v0

    .line 77
    const/high16 v0, 0x3e800000    # 0.25f

    .line 79
    mul-float/2addr p2, v0

    .line 80
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mEdgeSwipeHeightPixels:F

    .line 82
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 86
    invoke-direct {p2, p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V

    .line 89
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 91
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 93
    const/4 p4, 0x1

    .line 94
    invoke-direct {p2, p0, p4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;I)V

    .line 97
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 99
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 101
    const/4 p4, 0x0

    .line 102
    invoke-direct {p2, p0, p4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;I)V

    .line 105
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 107
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 109
    iget p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 111
    const/16 v0, 0x400

    .line 113
    invoke-direct {p2, p0, v0, p4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V

    .line 116
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 118
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 120
    const/high16 v0, 0x200000

    .line 122
    invoke-direct {p2, p0, v0, p4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V

    .line 125
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 127
    if-nez p3, :cond_0

    .line 129
    new-instance p2, Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 131
    invoke-direct {p2, p1, p0, v1}, Lcom/android/server/accessibility/gestures/GestureManifold;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold$Listener;Lcom/android/server/accessibility/gestures/TouchState;)V

    .line 134
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 136
    goto :goto_0

    .line 137
    :cond_0
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 139
    :goto_0
    new-instance p1, Landroid/graphics/Region;

    .line 141
    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 146
    new-instance p1, Landroid/graphics/Region;

    .line 148
    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    .line 153
    return-void
.end method

.method public static checkForMalformedEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_2

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 24
    move-result v2

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 31
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 37
    const/4 v3, 0x0

    .line 38
    cmpg-float v4, v1, v3

    .line 40
    if-ltz v4, :cond_0

    .line 42
    cmpg-float v3, v2, v3

    .line 44
    if-ltz v3, :cond_0

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v5, "Invalid coordinates: ("

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", "

    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ")"

    .line 76
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 89
    const-string v3, "Encountered exception getting details of pointer "

    .line 91
    const-string v4, " / "

    .line 93
    invoke-static {v0, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 100
    move-result p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    throw v2

    .line 112
    :cond_1
    return-void

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    const-string v2, "Invalid pointer count: "

    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 125
    move-result p0

    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    throw v0
.end method


# virtual methods
.method public final clear(ILandroid/view/MotionEvent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 5
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 11
    invoke-static {}, Lcom/android/server/accessibility/Flags;->sendHoverEventsBasedOnEventStream()Z

    .line 14
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 17
    const/4 v2, -0x1

    .line 18
    iput v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 20
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 22
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerIdBits()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 32
    move-result v10

    .line 33
    const/4 v11, 0x0

    .line 34
    move v12, v3

    .line 35
    move v13, v11

    .line 36
    :goto_0
    if-ge v13, v10, :cond_2

    .line 38
    move-object/from16 v14, p2

    .line 40
    invoke-virtual {v14, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 43
    move-result v15

    .line 44
    iget-object v3, v9, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 46
    invoke-virtual {v3, v15}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v4, 0x6

    .line 54
    invoke-virtual {v9, v4, v13}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    .line 57
    move-result v4

    .line 58
    iget-object v8, v3, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 60
    move-object v3, v9

    .line 61
    move v5, v12

    .line 62
    move/from16 v6, p1

    .line 64
    move-object/from16 v7, p2

    .line 66
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 69
    const/4 v3, 0x1

    .line 70
    shl-int/2addr v3, v15

    .line 71
    not-int v3, v3

    .line 72
    and-int/2addr v3, v12

    .line 73
    move v12, v3

    .line 74
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 79
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 82
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 84
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 87
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 89
    iget-object v4, v3, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 91
    iget-object v4, v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 98
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 101
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 103
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 106
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 108
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 111
    iput v2, v9, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 113
    iput v11, v9, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 115
    iput v11, v9, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 117
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 120
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 122
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 125
    return-void
.end method

.method public final clearEvents(I)V
    .locals 2

    .line 1
    const/16 v0, 0x1002

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 7
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/high16 v1, 0x2000000

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 19
    return-void
.end method

.method public final computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 7
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_1

    .line 13
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 15
    const/4 v3, -0x1

    .line 16
    if-eq v2, v3, :cond_1

    .line 18
    if-nez v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 23
    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    .line 26
    move-result v2

    .line 27
    iget v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 29
    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    .line 32
    move-result v4

    .line 33
    iget v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 35
    iget-object v3, v3, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 37
    aget-object v3, v3, v5

    .line 39
    iget-wide v7, v3, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    .line 41
    const/4 v3, 0x1

    .line 42
    new-array v5, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 44
    move-object v12, v5

    .line 45
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    .line 47
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 50
    const/4 v9, 0x0

    .line 51
    aput-object v6, v5, v9

    .line 53
    iput v2, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 55
    iput v4, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 57
    new-array v2, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 59
    move-object v11, v2

    .line 60
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    .line 62
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 65
    aput-object v4, v2, v9

    .line 67
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 69
    iput v0, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 71
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 76
    move-result v13

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 80
    move-result v14

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 84
    move-result v15

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 88
    move-result v16

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 92
    move-result v17

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 96
    move-result v18

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 100
    move-result v19

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 104
    move-result v20

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 108
    move-result v21

    .line 109
    const/4 v10, 0x1

    .line 110
    move-wide v5, v7

    .line 111
    move-wide v2, v7

    .line 112
    invoke-static/range {v5 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 119
    return-object v0

    .line 120
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 121
    return-object v0
.end method

.method public final computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 14
    if-eq v0, v2, :cond_1

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 23
    move-result v0

    .line 24
    if-ltz v0, :cond_1

    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 39
    move-result v0

    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 44
    move-result v4

    .line 45
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 48
    move-result v5

    .line 49
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->getDistanceToClosestEdge(FF)F

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->getDistanceToClosestEdge(FF)F

    .line 60
    move-result v2

    .line 61
    cmpg-float v1, v1, v2

    .line 63
    if-gez v1, :cond_2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v0, p1

    .line 67
    :goto_0
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 69
    return-void
.end method

.method public final dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "Dispatching gesture event:"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TouchExplorer"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 30
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v0

    .line 33
    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final getDistanceToClosestEdge(FF)F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    int-to-long v0, v0

    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 26
    int-to-long v2, p0

    .line 27
    long-to-float p0, v0

    .line 28
    sub-float/2addr p0, p1

    .line 29
    cmpg-float v0, p1, p0

    .line 31
    if-gez v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p1, p0

    .line 35
    :goto_0
    cmpl-float p0, p1, p2

    .line 37
    if-lez p0, :cond_1

    .line 39
    move p1, p2

    .line 40
    :cond_1
    long-to-float p0, v2

    .line 41
    sub-float/2addr p0, p2

    .line 42
    cmpl-float p2, p1, p0

    .line 44
    if-lez p2, :cond_2

    .line 46
    move p1, p0

    .line 47
    :cond_2
    return p1
.end method

.method public final handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 5
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x1

    .line 9
    :try_start_0
    iput-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 14
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 22
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 24
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 27
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 29
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/android/server/accessibility/Flags;->sendHoverEventsBasedOnEventStream()Z

    .line 38
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 41
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 43
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 45
    if-nez v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 49
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 57
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    .line 60
    move-result v0

    .line 61
    shl-int v0, v2, v0

    .line 63
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 65
    iget-boolean v1, v1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 67
    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 71
    iput v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 73
    iput p3, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 75
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 81
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 84
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 87
    iput v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 89
    iput p3, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 91
    iget-object v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 93
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 95
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 97
    int-to-long v3, v0

    .line 98
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 104
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 109
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 114
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 117
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 119
    const/high16 v1, 0x100000

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 124
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 129
    move-result v1

    .line 130
    float-to-int v1, v1

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 134
    move-result v2

    .line 135
    float-to-int v2, v2

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 144
    const/4 v1, 0x4

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 148
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 151
    move-result-object v6

    .line 152
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 154
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    .line 157
    move-result v3

    .line 158
    const/4 v4, -0x1

    .line 159
    move v5, p3

    .line 160
    move-object v7, p2

    .line 161
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 164
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 166
    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 169
    goto :goto_1

    .line 170
    :cond_3
    iget-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 175
    move-result v0

    .line 176
    float-to-int v0, v0

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 180
    move-result p1

    .line 181
    float-to-int p1, p1

    .line 182
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_5

    .line 188
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 190
    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 193
    move-result p3

    .line 194
    if-eqz p3, :cond_5

    .line 196
    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->run()V

    .line 199
    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 202
    goto :goto_1

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 205
    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 208
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 210
    iget-boolean p1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 212
    if-eqz p1, :cond_6

    .line 214
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 216
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 219
    :cond_6
    return-void

    .line 220
    :catchall_0
    move-exception p0

    .line 221
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    throw p0
.end method

.method public final handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v7, p2

    .line 7
    move/from16 v8, p3

    .line 9
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 11
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    .line 14
    move-result v3

    .line 15
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 18
    move-result v3

    .line 19
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 21
    iget-boolean v4, v9, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 23
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 25
    if-eqz v4, :cond_0

    .line 27
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 29
    invoke-virtual {v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 32
    invoke-virtual {v5, v1, v7}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 39
    move-result v4

    .line 40
    const/4 v10, 0x1

    .line 41
    if-eq v4, v10, :cond_16

    .line 43
    iget v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 45
    const/4 v12, 0x3

    .line 46
    const/4 v13, 0x2

    .line 47
    const-string v15, "TouchExplorer"

    .line 49
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 51
    iget-object v14, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 53
    if-eq v4, v13, :cond_b

    .line 55
    iget-boolean v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 57
    if-eqz v3, :cond_9

    .line 59
    iget-boolean v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 61
    if-eqz v3, :cond_17

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 66
    move-result v3

    .line 67
    if-ne v3, v12, :cond_17

    .line 69
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 78
    move-result-object v3

    .line 79
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 81
    int-to-long v3, v3

    .line 82
    const/4 v5, 0x0

    .line 83
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 86
    move-result v7

    .line 87
    sget-boolean v12, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 89
    if-ge v5, v7, :cond_2

    .line 91
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 94
    move-result v7

    .line 95
    invoke-virtual {v2, v7}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    .line 98
    move-result v7

    .line 99
    long-to-float v13, v3

    .line 100
    iget v10, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mEdgeSwipeHeightPixels:F

    .line 102
    sub-float/2addr v13, v10

    .line 103
    cmpg-float v10, v7, v13

    .line 105
    if-gez v10, :cond_1

    .line 107
    if-eqz v12, :cond_17

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "The pointer is not on the bottom edge"

    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto/16 :goto_a

    .line 128
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    if-eqz v12, :cond_3

    .line 133
    const-string v2, "Three-finger edge swipe detected."

    .line 135
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    iget-boolean v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 140
    if-eqz v2, :cond_4

    .line 142
    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 144
    iget-object v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 146
    const/4 v4, -0x1

    .line 147
    invoke-direct {v2, v4, v6, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 150
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 153
    :cond_4
    const/4 v0, 0x4

    .line 154
    invoke-virtual {v9, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 157
    invoke-virtual {v14}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 160
    invoke-virtual {v9}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_5

    .line 166
    invoke-virtual {v11, v8, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    .line 169
    goto/16 :goto_a

    .line 171
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 177
    move-result v0

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 181
    move-result v2

    .line 182
    iget-object v9, v11, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 184
    iget-object v3, v9, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 186
    iget v3, v3, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    .line 191
    move-result v3

    .line 192
    if-eq v2, v3, :cond_6

    .line 194
    const-string v2, "EventDispatcher"

    .line 196
    const-string v3, "The pointer count doesn\'t match the received count."

    .line 198
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 204
    move-result-object v2

    .line 205
    :goto_1
    move-object v10, v2

    .line 206
    goto :goto_3

    .line 207
    :cond_6
    new-array v3, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 209
    new-array v4, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 211
    const/4 v5, 0x0

    .line 212
    :goto_2
    if-ge v5, v2, :cond_7

    .line 214
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 217
    move-result v6

    .line 218
    iget-object v7, v9, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 220
    invoke-virtual {v7, v6}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    .line 223
    move-result v10

    .line 224
    invoke-virtual {v7, v6}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    .line 227
    move-result v7

    .line 228
    new-instance v12, Landroid/view/MotionEvent$PointerCoords;

    .line 230
    invoke-direct {v12}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 233
    aput-object v12, v3, v5

    .line 235
    iput v10, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 237
    iput v7, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 239
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    .line 241
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 244
    aput-object v7, v4, v5

    .line 246
    iput v6, v7, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 248
    const/4 v6, 0x1

    .line 249
    iput v6, v7, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 251
    add-int/lit8 v5, v5, 0x1

    .line 253
    goto :goto_2

    .line 254
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 257
    move-result-wide v17

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 261
    move-result-wide v19

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 265
    move-result v21

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 269
    move-result v25

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 273
    move-result v26

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 277
    move-result v27

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 281
    move-result v28

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 285
    move-result v29

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 289
    move-result v30

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 293
    move-result v31

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 297
    move-result v32

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 301
    move-result v33

    .line 302
    move/from16 v22, v2

    .line 304
    move-object/from16 v23, v4

    .line 306
    move-object/from16 v24, v3

    .line 308
    invoke-static/range {v17 .. v33}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    .line 311
    move-result-object v2

    .line 312
    goto :goto_1

    .line 313
    :goto_3
    const/4 v2, 0x0

    .line 314
    const/4 v12, 0x0

    .line 315
    :goto_4
    if-ge v12, v0, :cond_17

    .line 317
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 320
    move-result v3

    .line 321
    invoke-virtual {v9, v3}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    .line 324
    move-result v4

    .line 325
    if-nez v4, :cond_8

    .line 327
    const/4 v4, 0x1

    .line 328
    shl-int v3, v4, v3

    .line 330
    or-int v13, v2, v3

    .line 332
    const/4 v14, 0x0

    .line 333
    invoke-virtual {v11, v14, v12}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    .line 336
    move-result v3

    .line 337
    iget-object v7, v9, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 339
    move-object v2, v11

    .line 340
    move v4, v13

    .line 341
    move/from16 v5, p3

    .line 343
    move-object v6, v10

    .line 344
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 347
    move v2, v13

    .line 348
    goto :goto_5

    .line 349
    :cond_8
    const/4 v14, 0x0

    .line 350
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 352
    goto :goto_4

    .line 353
    :cond_9
    iget-boolean v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 355
    if-eqz v2, :cond_a

    .line 357
    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 359
    iget-object v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 361
    const/4 v4, -0x1

    .line 362
    invoke-direct {v2, v4, v6, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 365
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 368
    :cond_a
    const/4 v0, 0x4

    .line 369
    invoke-virtual {v9, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 372
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v11, v8, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    .line 379
    goto/16 :goto_a

    .line 381
    :cond_b
    const/4 v4, 0x0

    .line 382
    iget-boolean v10, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 384
    if-eqz v10, :cond_c

    .line 386
    iget-boolean v10, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 388
    if-nez v10, :cond_c

    .line 390
    return-void

    .line 391
    :cond_c
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 394
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 396
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 399
    iget-boolean v5, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 401
    if-eqz v5, :cond_11

    .line 403
    iget-boolean v5, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 405
    if-eqz v5, :cond_11

    .line 407
    if-gez v3, :cond_d

    .line 409
    return-void

    .line 410
    :cond_d
    move v3, v4

    .line 411
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 414
    move-result v5

    .line 415
    if-ge v3, v5, :cond_11

    .line 417
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 420
    move-result v5

    .line 421
    const/4 v10, 0x1

    .line 422
    shl-int v16, v10, v5

    .line 424
    iget v10, v2, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 426
    and-int v10, v10, v16

    .line 428
    if-eqz v10, :cond_e

    .line 430
    const/4 v10, 0x1

    .line 431
    goto :goto_7

    .line 432
    :cond_e
    move v10, v4

    .line 433
    :goto_7
    if-nez v10, :cond_f

    .line 435
    const-string v10, "Invalid pointer id: "

    .line 437
    invoke-static {v5, v10, v15}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_f
    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    .line 443
    move-result v10

    .line 444
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 447
    move-result v16

    .line 448
    sub-float v10, v10, v16

    .line 450
    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    .line 453
    move-result v5

    .line 454
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 457
    move-result v16

    .line 458
    sub-float v5, v5, v16

    .line 460
    float-to-double v12, v10

    .line 461
    float-to-double v4, v5

    .line 462
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 465
    move-result-wide v4

    .line 466
    iget v12, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchSlop:I

    .line 468
    const/4 v13, 0x2

    .line 469
    mul-int/2addr v12, v13

    .line 470
    move-object/from16 v16, v11

    .line 472
    int-to-double v10, v12

    .line 473
    cmpg-double v4, v4, v10

    .line 475
    if-gez v4, :cond_10

    .line 477
    return-void

    .line 478
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 480
    move-object/from16 v11, v16

    .line 482
    const/4 v4, 0x0

    .line 483
    const/4 v12, 0x3

    .line 484
    goto :goto_6

    .line 485
    :cond_11
    move-object/from16 v16, v11

    .line 487
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 490
    move-result-object v10

    .line 491
    invoke-virtual {v0, v10}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    .line 494
    move-result v1

    .line 495
    if-eqz v1, :cond_14

    .line 497
    iget-boolean v1, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 499
    if-eqz v1, :cond_12

    .line 501
    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 503
    iget-object v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 505
    const/4 v4, -0x1

    .line 506
    invoke-direct {v1, v4, v6, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 509
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 512
    :cond_12
    invoke-virtual {v0, v10}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 515
    iget v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 517
    const/4 v3, 0x1

    .line 518
    shl-int v11, v3, v1

    .line 520
    iget v1, v2, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 522
    invoke-virtual {v10, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 525
    invoke-virtual {v0, v10}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 528
    move-result-object v5

    .line 529
    if-eqz v5, :cond_13

    .line 531
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 533
    const/4 v2, 0x0

    .line 534
    move v3, v11

    .line 535
    move/from16 v4, p3

    .line 537
    move-object/from16 v6, p2

    .line 539
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 542
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 544
    const/4 v1, 0x2

    .line 545
    move v2, v11

    .line 546
    move/from16 v3, p3

    .line 548
    move-object v4, v10

    .line 549
    move-object/from16 v5, p2

    .line 551
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 554
    :goto_8
    const/4 v0, 0x3

    .line 555
    goto :goto_9

    .line 556
    :cond_13
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 558
    const/4 v1, 0x0

    .line 559
    move v2, v11

    .line 560
    move/from16 v3, p3

    .line 562
    move-object v4, v10

    .line 563
    move-object/from16 v5, p2

    .line 565
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 568
    goto :goto_8

    .line 569
    :goto_9
    invoke-virtual {v9, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 572
    goto :goto_a

    .line 573
    :cond_14
    iget-boolean v1, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 575
    if-eqz v1, :cond_15

    .line 577
    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 579
    iget-object v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 581
    const/4 v3, -0x1

    .line 582
    invoke-direct {v1, v3, v6, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 585
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 588
    :cond_15
    const/4 v0, 0x4

    .line 589
    invoke-virtual {v9, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 592
    move-object/from16 v0, v16

    .line 594
    invoke-virtual {v0, v8, v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    .line 597
    goto :goto_a

    .line 598
    :cond_16
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 601
    move-result v0

    .line 602
    if-eqz v0, :cond_17

    .line 604
    invoke-virtual {v5, v1, v7}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 607
    :cond_17
    :goto_a
    return-void
.end method

.method public final handleActionPointerDown(ILandroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 12
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 14
    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 23
    iget-boolean p1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 25
    if-eqz p1, :cond_1

    .line 27
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 32
    :cond_1
    return-void
.end method

.method public final handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 12
    if-ne v0, v2, :cond_0

    .line 14
    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 17
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 27
    move-result v0

    .line 28
    shl-int v0, v2, v0

    .line 30
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 32
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 44
    iget-object v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 46
    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 48
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 53
    iget-object v3, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 55
    iget v2, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 57
    int-to-long v4, v2

    .line 58
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 63
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 66
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 69
    move-result-object p1

    .line 70
    iput-object p1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 72
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 75
    move-result-object p1

    .line 76
    iput-object p1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 78
    iput v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 80
    iput p3, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 82
    iget-object p1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 84
    iget-object p2, p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 86
    iget p1, p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 88
    int-to-long v2, p1

    .line 89
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 96
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 98
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 106
    iget-object p1, p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 108
    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 110
    int-to-long p2, p2

    .line 111
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_3
    return-void
.end method

.method public final isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 5
    move-result v1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 14
    move-result v4

    .line 15
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 18
    move-result p1

    .line 19
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    .line 24
    move-result v5

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    .line 28
    move-result v6

    .line 29
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    .line 32
    move-result v7

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    .line 36
    move-result p0

    .line 37
    sub-float/2addr v1, v5

    .line 38
    sub-float/2addr v2, v6

    .line 39
    const/4 v5, 0x0

    .line 40
    cmpl-float v6, v1, v5

    .line 42
    if-nez v6, :cond_1

    .line 44
    cmpl-float v6, v2, v5

    .line 46
    if-nez v6, :cond_1

    .line 48
    :cond_0
    :goto_0
    move v0, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    float-to-double v8, v1

    .line 51
    float-to-double v10, v2

    .line 52
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 55
    move-result-wide v8

    .line 56
    double-to-float v6, v8

    .line 57
    cmpl-float v8, v6, v5

    .line 59
    if-lez v8, :cond_2

    .line 61
    div-float/2addr v1, v6

    .line 62
    :cond_2
    if-lez v8, :cond_3

    .line 64
    div-float/2addr v2, v6

    .line 65
    :cond_3
    sub-float/2addr v4, v7

    .line 66
    sub-float/2addr p1, p0

    .line 67
    cmpl-float p0, v4, v5

    .line 69
    if-nez p0, :cond_4

    .line 71
    cmpl-float p0, p1, v5

    .line 73
    if-nez p0, :cond_4

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    float-to-double v6, v4

    .line 77
    float-to-double v8, p1

    .line 78
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 81
    move-result-wide v6

    .line 82
    double-to-float p0, v6

    .line 83
    cmpl-float v5, p0, v5

    .line 85
    if-lez v5, :cond_5

    .line 87
    div-float/2addr v4, p0

    .line 88
    :cond_5
    if-lez v5, :cond_6

    .line 90
    div-float/2addr p1, p0

    .line 91
    :cond_6
    mul-float/2addr v1, v4

    .line 92
    mul-float/2addr v2, p1

    .line 93
    add-float/2addr v2, v1

    .line 94
    const p0, 0x3f067b80

    .line 97
    cmpg-float p0, v2, p0

    .line 99
    if-gez p0, :cond_0

    .line 101
    :goto_1
    return v0
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v2, 0x3000

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v4, "event="

    .line 20
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v4, "TouchExplorer.onAccessibilityEvent"

    .line 32
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 38
    move-result v0

    .line 39
    const/high16 v1, 0x200000

    .line 41
    const/16 v2, 0x100

    .line 43
    if-ne v0, v2, :cond_3

    .line 45
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 47
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/android/server/accessibility/Flags;->sendA11yEventsBasedOnState()Z

    .line 57
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 59
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 62
    move-result v4

    .line 63
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 65
    if-eqz v4, :cond_2

    .line 67
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 70
    const/16 v3, 0x400

    .line 72
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 77
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_3

    .line 83
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 86
    invoke-virtual {v5, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 89
    :cond_3
    :goto_0
    const v3, 0x8000

    .line 92
    if-ne v0, v3, :cond_5

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 96
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    .line 98
    check-cast v0, Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v0

    .line 104
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_5

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 116
    iget v5, v4, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    .line 118
    const/16 v6, 0x11

    .line 120
    if-ne v5, v6, :cond_4

    .line 122
    const-string v5, "TouchExplorer"

    .line 124
    const-string/jumbo v6, "clear GESTURE_DOUBLE_TAP"

    .line 127
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 133
    goto :goto_1

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 142
    move-result v4

    .line 143
    const/16 v5, 0x20

    .line 145
    if-eq v4, v5, :cond_8

    .line 147
    const/16 v5, 0x80

    .line 149
    if-eq v4, v5, :cond_7

    .line 151
    if-eq v4, v2, :cond_7

    .line 153
    if-eq v4, v3, :cond_8

    .line 155
    if-eq v4, v1, :cond_6

    .line 157
    goto :goto_2

    .line 158
    :cond_6
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 160
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 162
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 164
    if-eqz v1, :cond_a

    .line 166
    iget v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    .line 168
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    .line 170
    if-eq v1, v2, :cond_a

    .line 172
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->moveDisplayToTopIfAllowed(I)V

    .line 177
    goto :goto_2

    .line 178
    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 181
    move-result v1

    .line 182
    iput v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    .line 184
    goto :goto_2

    .line 185
    :cond_8
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 187
    if-eqz v1, :cond_9

    .line 189
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 192
    const/4 v1, 0x0

    .line 193
    iput-object v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 195
    :cond_9
    const/4 v1, -0x1

    .line 196
    iput v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    .line 198
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 201
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/high16 v1, 0x2000000

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    .line 12
    :cond_0
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v6, p2

    .line 7
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 9
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 11
    const-wide/16 v4, 0x3000

    .line 13
    invoke-virtual {v3, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 19
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v8, "event="

    .line 26
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v8, ";rawEvent="

    .line 34
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v8, ";policyFlags="

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move/from16 v8, p3

    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v7

    .line 54
    const-string v9, "TouchExplorer.onDoubleTap"

    .line 56
    invoke-virtual {v3, v9, v4, v5, v7}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move/from16 v8, p3

    .line 62
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 65
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 67
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 70
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 72
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 75
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 77
    iget-boolean v4, v3, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 79
    if-eqz v4, :cond_1

    .line 81
    new-instance v4, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 83
    iget-object v3, v3, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 85
    const/16 v5, 0x11

    .line 87
    iget v7, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 89
    invoke-direct {v4, v5, v7, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 92
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 95
    :cond_1
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 97
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_2

    .line 103
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 106
    :cond_2
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 108
    const/high16 v3, 0x200000

    .line 110
    invoke-virtual {v7, v3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 113
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 118
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 120
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 127
    move-result-object v2

    .line 128
    const/4 v3, 0x0

    .line 129
    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    .line 134
    move-result-object v4

    .line 135
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_3

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 145
    move-result v0

    .line 146
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 149
    move-result v0

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    :goto_1
    move v0, v3

    .line 152
    :goto_2
    if-nez v0, :cond_7

    .line 154
    const-string v0, "TouchExplorer"

    .line 156
    const-string v2, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    .line 158
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v1, :cond_7

    .line 163
    if-eqz v6, :cond_7

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 168
    move-result v0

    .line 169
    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 172
    iget-object v2, v7, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 174
    invoke-virtual {v7, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_5

    .line 180
    const-string v0, "EventDispatcher"

    .line 182
    const-string v1, "Unable to compute click location."

    .line 184
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    goto/16 :goto_4

    .line 189
    :cond_5
    const/4 v5, 0x1

    .line 190
    new-array v9, v5, [Landroid/view/MotionEvent$PointerProperties;

    .line 192
    move-object v15, v9

    .line 193
    new-instance v10, Landroid/view/MotionEvent$PointerProperties;

    .line 195
    invoke-direct {v10}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 198
    aput-object v10, v9, v3

    .line 200
    invoke-virtual {v1, v0, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 203
    new-array v0, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 205
    move-object/from16 v16, v0

    .line 207
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    .line 209
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 212
    aput-object v9, v0, v3

    .line 214
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 216
    int-to-float v0, v0

    .line 217
    iput v0, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 219
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 221
    int-to-float v0, v0

    .line 222
    iput v0, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 227
    move-result-wide v9

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 231
    move-result-wide v11

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 235
    move-result v21

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 239
    move-result v23

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 243
    move-result v24

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 247
    move-result v25

    .line 248
    const/16 v18, 0x0

    .line 250
    const/high16 v19, 0x3f800000    # 1.0f

    .line 252
    const/4 v13, 0x0

    .line 253
    const/4 v14, 0x1

    .line 254
    const/16 v17, 0x0

    .line 256
    const/high16 v20, 0x3f800000    # 1.0f

    .line 258
    const/16 v22, 0x0

    .line 260
    invoke-static/range {v9 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    .line 263
    move-result-object v9

    .line 264
    if-ne v4, v5, :cond_6

    .line 266
    move v10, v5

    .line 267
    goto :goto_3

    .line 268
    :cond_6
    move v10, v3

    .line 269
    :goto_3
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 272
    move-result v0

    .line 273
    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 276
    move-result v0

    .line 277
    shl-int v11, v5, v0

    .line 279
    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 282
    const/4 v1, 0x0

    .line 283
    move-object v0, v7

    .line 284
    move v2, v11

    .line 285
    move/from16 v3, p3

    .line 287
    move-object v4, v9

    .line 288
    move-object/from16 v5, p2

    .line 290
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 293
    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 296
    const/4 v1, 0x1

    .line 297
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 300
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 303
    :cond_7
    :goto_4
    return-void
.end method

.method public final onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v2, 0x3000

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v4, "event="

    .line 20
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v4, ";rawEvent="

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string p2, ";policyFlags="

    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    const-string v1, "TouchExplorer.onDoubleTapAndHold"

    .line 48
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 53
    iget-object v0, p2, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 55
    invoke-virtual {p2, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    move-result v2

    .line 72
    iput v2, p2, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 77
    move-result v2

    .line 78
    float-to-int v2, v2

    .line 79
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 81
    sub-int/2addr v2, v3

    .line 82
    iput v2, p2, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 87
    move-result v1

    .line 88
    float-to-int v1, v1

    .line 89
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 91
    sub-int/2addr v1, v0

    .line 92
    iput v1, p2, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 94
    invoke-virtual {p2, p3, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    .line 97
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 100
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 102
    iget-boolean p2, p1, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 104
    if-eqz p2, :cond_2

    .line 106
    new-instance p2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 108
    iget-object p1, p1, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 110
    const/16 p3, 0x12

    .line 112
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 114
    invoke-direct {p2, p3, v0, p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 120
    :cond_2
    const/4 p1, 0x4

    .line 121
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 126
    :cond_3
    :goto_0
    return-void
.end method

.method public final onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v2, 0x3000

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v5, "event="

    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    const-string v5, "TouchExplorer.onGestureCompleted"

    .line 32
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    :cond_0
    sget-boolean v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 37
    const-string v2, "TouchExplorer"

    .line 39
    if-eqz v1, :cond_1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v3, "onGestureCompleted() : "

    .line 46
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getGestureId()I

    .line 52
    move-result v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getGestureId()I

    .line 66
    move-result v1

    .line 67
    const/16 v3, 0x3e8

    .line 69
    if-ne v1, v3, :cond_3

    .line 71
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSetupWizard(Landroid/content/Context;)Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 79
    const-string/jumbo p1, "stop talkback by GESTURE_TO_STOP_TALKBACK"

    .line 82
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 87
    const-string p1, "A11Y9006"

    .line 89
    invoke-static {p0, p1}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    const/4 p0, 0x0

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setScreenReaderEnabled(Z)V

    .line 96
    :cond_2
    return-void

    .line 97
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 100
    const/high16 v0, 0x80000

    .line 102
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 104
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 107
    const/high16 v0, 0x200000

    .line 109
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 114
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 116
    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 123
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 129
    return-void
.end method

.method public final onGestureStarted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v2, 0x3000

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    const-string v1, "TouchExplorer.onGestureStarted"

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 20
    :cond_0
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    const-string v0, "TouchExplorer"

    .line 26
    const-string/jumbo v1, "onGestureStarted()"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 34
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 37
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 39
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 42
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 44
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 46
    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 48
    const-wide/16 v2, 0x7d0

    .line 50
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 55
    const/high16 v0, 0x40000

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 60
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v6, p1

    .line 5
    move-object/from16 v7, p2

    .line 7
    move/from16 v8, p3

    .line 9
    const-string v1, "TouchExplorer"

    .line 11
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 13
    iget-object v2, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    const-wide/16 v3, 0x3000

    .line 17
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    iget-object v2, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v10, "event="

    .line 30
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v10, ";rawEvent="

    .line 38
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v10, ";policyFlags="

    .line 46
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    const-string v10, "TouchExplorer.onMotionEvent"

    .line 58
    invoke-virtual {v2, v10, v3, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 61
    :cond_0
    const/16 v2, 0x2002

    .line 63
    invoke-virtual {v6, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_42

    .line 69
    const/16 v2, 0x1002

    .line 71
    invoke-virtual {v6, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 77
    goto/16 :goto_9

    .line 79
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->checkForMalformedEvent(Landroid/view/MotionEvent;)V

    .line 82
    invoke-static/range {p2 .. p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->checkForMalformedEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 87
    sget-boolean v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 89
    if-nez v2, :cond_2

    .line 91
    sget-boolean v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->SEC_DEBUG:Z

    .line 93
    if-eqz v3, :cond_3

    .line 95
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    const-string v4, "Received event: "

    .line 99
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v4, ", policyFlags=0x"

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v10}, Lcom/android/server/accessibility/gestures/TouchState;->toString()Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_3
    iget v3, v10, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 133
    if-nez v3, :cond_4

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_4

    .line 141
    invoke-virtual {v10}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 144
    :cond_4
    iget-object v3, v10, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 146
    if-eqz v3, :cond_5

    .line 148
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 151
    :cond_5
    iget-object v3, v10, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    .line 153
    if-eqz v3, :cond_6

    .line 155
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 158
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 161
    move-result-object v3

    .line 162
    iput-object v3, v10, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 164
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 167
    move-result-object v3

    .line 168
    iput-object v3, v10, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    .line 170
    iput v8, v10, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    .line 172
    iget-object v3, v10, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 180
    move-result v4

    .line 181
    const/4 v5, 0x5

    .line 182
    const/4 v11, 0x1

    .line 183
    const/4 v12, 0x6

    .line 184
    if-eqz v4, :cond_a

    .line 186
    if-eq v4, v11, :cond_9

    .line 188
    if-eq v4, v5, :cond_8

    .line 190
    if-eq v4, v12, :cond_7

    .line 192
    goto :goto_0

    .line 193
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 196
    move-result v4

    .line 197
    invoke-virtual {v3, v4, v7}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    .line 200
    goto :goto_0

    .line 201
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 204
    move-result v4

    .line 205
    invoke-virtual {v3, v4, v7}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 208
    goto :goto_0

    .line 209
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 212
    move-result v4

    .line 213
    invoke-virtual {v3, v4, v7}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    .line 216
    goto :goto_0

    .line 217
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 220
    move-result v4

    .line 221
    invoke-virtual {v3, v4, v7}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 224
    :goto_0
    if-eqz v2, :cond_b

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 228
    const-string v13, "Received pointer:\n"

    .line 230
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->toString()Ljava/lang/String;

    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v3

    .line 244
    const-string v4, "ReceivedPointerTracker"

    .line 246
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_b
    iget-boolean v3, v10, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 251
    const/4 v13, 0x4

    .line 252
    const/4 v4, 0x3

    .line 253
    iget-object v14, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 255
    const/4 v15, 0x2

    .line 256
    if-eqz v3, :cond_c

    .line 258
    goto/16 :goto_2

    .line 260
    :cond_c
    iget v3, v10, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 262
    if-ne v3, v13, :cond_d

    .line 264
    goto/16 :goto_2

    .line 266
    :cond_d
    if-ne v3, v4, :cond_e

    .line 268
    goto/16 :goto_2

    .line 270
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 273
    move-result v3

    .line 274
    if-nez v3, :cond_f

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 279
    move-result v3

    .line 280
    float-to-int v3, v3

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 284
    move-result v13

    .line 285
    float-to-int v13, v13

    .line 286
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    .line 288
    invoke-virtual {v12, v3, v13}, Landroid/graphics/Region;->contains(II)Z

    .line 291
    move-result v12

    .line 292
    if-nez v12, :cond_15

    .line 294
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 296
    invoke-virtual {v12, v3, v13}, Landroid/graphics/Region;->contains(II)Z

    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_f

    .line 302
    goto :goto_2

    .line 303
    :cond_f
    iget-object v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 305
    iget v3, v3, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 307
    if-nez v3, :cond_10

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 312
    move-result v3

    .line 313
    if-nez v3, :cond_15

    .line 315
    invoke-virtual {v14}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 318
    :cond_10
    iget-boolean v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 320
    if-eqz v3, :cond_11

    .line 322
    iget-object v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 324
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 327
    move-result-object v12

    .line 328
    check-cast v3, Ljava/util/ArrayList;

    .line 330
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_11
    iget-object v3, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    .line 335
    check-cast v3, Ljava/util/ArrayList;

    .line 337
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 340
    move-result-object v3

    .line 341
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    move-result v12

    .line 345
    if-eqz v12, :cond_15

    .line 347
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    move-result-object v12

    .line 351
    check-cast v12, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 353
    iget v13, v12, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 355
    if-eq v13, v4, :cond_14

    .line 357
    const-string v13, "GestureManifold"

    .line 359
    if-eqz v2, :cond_12

    .line 361
    invoke-virtual {v12}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    .line 364
    move-result-object v5

    .line 365
    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_12
    invoke-virtual {v12, v6, v7, v8}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 371
    if-eqz v2, :cond_13

    .line 373
    invoke-virtual {v12}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    .line 376
    move-result-object v5

    .line 377
    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_13
    iget v5, v12, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 382
    if-ne v5, v15, :cond_14

    .line 384
    return-void

    .line 385
    :cond_14
    const/4 v5, 0x5

    .line 386
    goto :goto_1

    .line 387
    :cond_15
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 390
    move-result v2

    .line 391
    if-ne v2, v4, :cond_16

    .line 393
    invoke-virtual {v0, v8, v6}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    .line 396
    return-void

    .line 397
    :cond_16
    iget v2, v10, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 399
    if-nez v2, :cond_18

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_17

    .line 407
    goto/16 :goto_8

    .line 409
    :cond_17
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 412
    goto/16 :goto_8

    .line 414
    :cond_18
    const/4 v12, 0x0

    .line 415
    if-ne v2, v11, :cond_19

    .line 417
    move v2, v11

    .line 418
    goto :goto_3

    .line 419
    :cond_19
    move v2, v12

    .line 420
    :goto_3
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 422
    if-eqz v2, :cond_1f

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 427
    move-result v1

    .line 428
    if-eqz v1, :cond_1e

    .line 430
    if-eq v1, v11, :cond_1d

    .line 432
    if-eq v1, v15, :cond_1c

    .line 434
    const/4 v2, 0x5

    .line 435
    if-eq v1, v2, :cond_1b

    .line 437
    const/4 v2, 0x6

    .line 438
    if-eq v1, v2, :cond_1a

    .line 440
    goto/16 :goto_8

    .line 442
    :cond_1a
    iget-boolean v0, v10, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 444
    if-eqz v0, :cond_41

    .line 446
    invoke-virtual {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 449
    goto/16 :goto_8

    .line 451
    :cond_1b
    invoke-virtual {v0, v8, v7}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionPointerDown(ILandroid/view/MotionEvent;)V

    .line 454
    goto/16 :goto_8

    .line 456
    :cond_1c
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 459
    goto/16 :goto_8

    .line 461
    :cond_1d
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 464
    goto/16 :goto_8

    .line 466
    :cond_1e
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 469
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 472
    goto/16 :goto_8

    .line 474
    :cond_1f
    invoke-virtual {v10}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_2b

    .line 480
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 483
    move-result v1

    .line 484
    if-eqz v1, :cond_2a

    .line 486
    if-eq v1, v11, :cond_29

    .line 488
    if-eq v1, v15, :cond_21

    .line 490
    const/4 v2, 0x5

    .line 491
    if-eq v1, v2, :cond_20

    .line 493
    goto/16 :goto_8

    .line 495
    :cond_20
    invoke-virtual {v0, v8, v7}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionPointerDown(ILandroid/view/MotionEvent;)V

    .line 498
    goto/16 :goto_8

    .line 500
    :cond_21
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 502
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    .line 505
    move-result v2

    .line 506
    shl-int v3, v11, v2

    .line 508
    invoke-virtual {v6, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 511
    move-result v4

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 515
    move-result v5

    .line 516
    if-eq v5, v11, :cond_28

    .line 518
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 520
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 522
    if-eq v5, v15, :cond_24

    .line 524
    iget-boolean v1, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 526
    if-eqz v1, :cond_22

    .line 528
    goto/16 :goto_8

    .line 530
    :cond_22
    invoke-virtual {v9}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 533
    move-result v1

    .line 534
    if-eqz v1, :cond_23

    .line 536
    invoke-virtual {v9}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 539
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 542
    goto :goto_4

    .line 543
    :cond_23
    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 546
    :goto_4
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 549
    goto/16 :goto_8

    .line 551
    :cond_24
    iget-boolean v5, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 553
    if-eqz v5, :cond_25

    .line 555
    iget-boolean v5, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 557
    if-nez v5, :cond_25

    .line 559
    goto/16 :goto_8

    .line 561
    :cond_25
    invoke-virtual {v9}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 564
    move-result v5

    .line 565
    if-eqz v5, :cond_26

    .line 567
    invoke-virtual {v9}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 570
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 573
    :cond_26
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    .line 576
    move-result v3

    .line 577
    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 580
    move-result v5

    .line 581
    sub-float/2addr v3, v5

    .line 582
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    .line 585
    move-result v1

    .line 586
    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 589
    move-result v2

    .line 590
    sub-float/2addr v1, v2

    .line 591
    float-to-double v2, v3

    .line 592
    float-to-double v4, v1

    .line 593
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 596
    move-result-wide v1

    .line 597
    iget v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    .line 599
    int-to-double v3, v3

    .line 600
    cmpl-double v1, v1, v3

    .line 602
    if-lez v1, :cond_27

    .line 604
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 607
    goto/16 :goto_8

    .line 609
    :cond_27
    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 612
    goto/16 :goto_8

    .line 614
    :cond_28
    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 617
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 619
    const/4 v1, 0x7

    .line 620
    move v2, v3

    .line 621
    move/from16 v3, p3

    .line 623
    move-object/from16 v4, p1

    .line 625
    move-object/from16 v5, p2

    .line 627
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 630
    goto/16 :goto_8

    .line 632
    :cond_29
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 635
    goto/16 :goto_8

    .line 637
    :cond_2a
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 639
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 642
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 645
    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 648
    goto/16 :goto_8

    .line 650
    :cond_2b
    iget v2, v10, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 652
    if-ne v2, v4, :cond_2c

    .line 654
    move v4, v11

    .line 655
    goto :goto_5

    .line 656
    :cond_2c
    move v4, v12

    .line 657
    :goto_5
    const/4 v13, -0x1

    .line 658
    const/high16 v5, 0x200000

    .line 660
    if-eqz v4, :cond_3c

    .line 662
    iget-boolean v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 664
    if-eqz v2, :cond_2d

    .line 666
    iget-boolean v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 668
    if-nez v2, :cond_2d

    .line 670
    goto/16 :goto_8

    .line 672
    :cond_2d
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 674
    invoke-virtual {v6, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 677
    move-result v2

    .line 678
    if-ne v2, v13, :cond_2e

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    const-string/jumbo v3, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    .line 685
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    iget v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 690
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 693
    move-result-object v3

    .line 694
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v3, ", Event: "

    .line 699
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    move-result-object v2

    .line 709
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iput v13, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 714
    move v2, v12

    .line 715
    goto :goto_6

    .line 716
    :cond_2e
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 718
    shl-int v2, v11, v2

    .line 720
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 723
    move-result v3

    .line 724
    if-eqz v3, :cond_3b

    .line 726
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 728
    if-eq v3, v11, :cond_39

    .line 730
    if-eq v3, v15, :cond_33

    .line 732
    const/4 v1, 0x5

    .line 733
    if-eq v3, v1, :cond_30

    .line 735
    const/4 v1, 0x6

    .line 736
    if-eq v3, v1, :cond_2f

    .line 738
    goto/16 :goto_8

    .line 740
    :cond_2f
    iput v13, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 742
    const/4 v1, 0x1

    .line 743
    move-object v0, v12

    .line 744
    move/from16 v3, p3

    .line 746
    move-object/from16 v4, p1

    .line 748
    move-object/from16 v5, p2

    .line 750
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 753
    goto/16 :goto_8

    .line 755
    :cond_30
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 757
    if-eq v0, v13, :cond_31

    .line 759
    const/4 v1, 0x1

    .line 760
    move-object v0, v12

    .line 761
    move/from16 v3, p3

    .line 763
    move-object/from16 v4, p1

    .line 765
    move-object/from16 v5, p2

    .line 767
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 770
    :cond_31
    iget-boolean v0, v10, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 772
    if-eqz v0, :cond_32

    .line 774
    invoke-virtual {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 777
    goto/16 :goto_8

    .line 779
    :cond_32
    const/4 v0, 0x4

    .line 780
    invoke-virtual {v10, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 783
    invoke-virtual {v12, v8, v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    .line 786
    goto/16 :goto_8

    .line 788
    :cond_33
    iget v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 790
    if-ne v1, v13, :cond_34

    .line 792
    goto/16 :goto_8

    .line 794
    :cond_34
    iget-boolean v1, v10, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 796
    if-eqz v1, :cond_35

    .line 798
    invoke-virtual {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 801
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 804
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 806
    const/4 v1, 0x2

    .line 807
    move/from16 v3, p3

    .line 809
    move-object/from16 v4, p1

    .line 811
    move-object/from16 v5, p2

    .line 813
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 816
    goto/16 :goto_8

    .line 818
    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 821
    move-result v1

    .line 822
    if-eq v1, v11, :cond_41

    .line 824
    if-eq v1, v15, :cond_37

    .line 826
    iget-boolean v1, v10, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 828
    if-eqz v1, :cond_36

    .line 830
    invoke-virtual {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 833
    goto/16 :goto_8

    .line 835
    :cond_36
    const/4 v1, 0x4

    .line 836
    invoke-virtual {v10, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 839
    iput v13, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 841
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 844
    move-result-object v6

    .line 845
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 847
    const/4 v1, 0x1

    .line 848
    move/from16 v3, p3

    .line 850
    move-object v4, v6

    .line 851
    move-object/from16 v5, p2

    .line 853
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 856
    invoke-virtual {v12, v8, v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    .line 859
    goto/16 :goto_8

    .line 861
    :cond_37
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    .line 864
    move-result v1

    .line 865
    if-eqz v1, :cond_38

    .line 867
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 870
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 872
    const/4 v1, 0x2

    .line 873
    move/from16 v3, p3

    .line 875
    move-object/from16 v4, p1

    .line 877
    move-object/from16 v5, p2

    .line 879
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 882
    goto/16 :goto_8

    .line 884
    :cond_38
    const/4 v1, 0x4

    .line 885
    invoke-virtual {v10, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 888
    iput v13, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 890
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 893
    move-result-object v6

    .line 894
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 896
    const/4 v1, 0x1

    .line 897
    move/from16 v3, p3

    .line 899
    move-object v4, v6

    .line 900
    move-object/from16 v5, p2

    .line 902
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 905
    invoke-virtual {v12, v8, v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    .line 908
    goto/16 :goto_8

    .line 910
    :cond_39
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 913
    move-result v1

    .line 914
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 917
    move-result v1

    .line 918
    iget v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 920
    if-ne v1, v3, :cond_3a

    .line 922
    iput v13, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 924
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 926
    const/4 v1, 0x1

    .line 927
    move/from16 v3, p3

    .line 929
    move-object/from16 v4, p1

    .line 931
    move v14, v5

    .line 932
    move-object/from16 v5, p2

    .line 934
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 937
    goto :goto_7

    .line 938
    :cond_3a
    move v14, v5

    .line 939
    :goto_7
    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 942
    invoke-virtual {v12, v14}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 945
    goto/16 :goto_8

    .line 947
    :cond_3b
    const-string v2, "Dragging state can be reached only if two pointers are already down"

    .line 949
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {v0, v8, v6}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    .line 955
    goto :goto_8

    .line 956
    :cond_3c
    move v14, v5

    .line 957
    const/4 v4, 0x4

    .line 958
    if-ne v2, v4, :cond_3f

    .line 960
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 963
    move-result v2

    .line 964
    if-eqz v2, :cond_3e

    .line 966
    if-eq v2, v11, :cond_3d

    .line 968
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 971
    move-result v1

    .line 972
    const/4 v2, -0x1

    .line 973
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 975
    move/from16 v3, p3

    .line 977
    move-object/from16 v4, p1

    .line 979
    move-object/from16 v5, p2

    .line 981
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 984
    goto :goto_8

    .line 985
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 988
    move-result v2

    .line 989
    const/4 v3, -0x1

    .line 990
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 992
    move/from16 v4, p3

    .line 994
    move-object/from16 v5, p1

    .line 996
    move-object/from16 v6, p2

    .line 998
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 1001
    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1004
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 1006
    iput v13, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 1008
    iput v12, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 1010
    iput v12, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 1012
    invoke-virtual {v0, v14}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 1015
    goto :goto_8

    .line 1016
    :cond_3e
    const-string v2, "Delegating state can only be reached if there is at least one pointer down!"

    .line 1018
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v0, v8, v6}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    .line 1024
    goto :goto_8

    .line 1025
    :cond_3f
    const/4 v4, 0x5

    .line 1026
    if-ne v2, v4, :cond_40

    .line 1028
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1031
    iget-boolean v0, v10, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 1033
    if-eqz v0, :cond_41

    .line 1035
    invoke-virtual {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 1038
    goto :goto_8

    .line 1039
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1041
    const-string v3, "Illegal state: "

    .line 1043
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1052
    move-result-object v2

    .line 1053
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {v0, v8, v6}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    .line 1059
    :cond_41
    :goto_8
    return-void

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1063
    const-string v3, "Ignoring malformed event: "

    .line 1065
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    .line 1071
    move-result-object v3

    .line 1072
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    move-result-object v2

    .line 1079
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    return-void

    .line 1083
    :cond_42
    :goto_9
    invoke-super/range {p0 .. p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1086
    return-void
.end method

.method public final sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 3
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 5
    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result v1

    .line 11
    const/16 v2, 0xa

    .line 13
    if-eq v1, v2, :cond_1

    .line 15
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getPointerIdBits()I

    .line 18
    move-result v3

    .line 19
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 21
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 27
    iget-object v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 29
    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 31
    iget v4, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 33
    int-to-long v6, v4

    .line 34
    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_0
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 39
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 41
    const/16 v2, 0xa

    .line 43
    move v4, p1

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 47
    :cond_1
    return-void
.end method

.method public final sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 11
    const/16 v2, 0x200

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 16
    :cond_0
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 18
    if-eqz v7, :cond_1

    .line 20
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 23
    move-result v1

    .line 24
    const/16 v2, 0xa

    .line 26
    if-ne v1, v2, :cond_1

    .line 28
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getPointerIdBits()I

    .line 31
    move-result v5

    .line 32
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 34
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 36
    const/16 v4, 0x9

    .line 38
    move v6, p1

    .line 39
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 42
    :cond_1
    return-void
.end method

.method public final setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 3
    iput-object p1, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 5
    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 7
    return-void
.end method

.method public final setServiceDetectsGestures(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo v0, "serviceDetectsGestures: "

    .line 13
    const-string v1, "TouchState"

    .line 15
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    .line 20
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "TouchExplorer { mTouchState: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mDetermineUserIntentTimeout: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mDoubleTapSlop: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", mDraggingPointerId: "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 40
    const-string v1, " }"

    .line 42
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
