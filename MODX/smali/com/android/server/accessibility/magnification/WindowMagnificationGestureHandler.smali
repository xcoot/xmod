.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;
.super Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_DETECTING:Z

.field public static final DEBUG_STATE_TRANSITIONS:Z

.field public static final MAX_SCALE:F


# instance fields
.field public final mContext:Landroid/content/Context;

.field mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

.field final mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

.field final mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

.field public final mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

.field public final mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

.field final mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

.field mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

.field public final mTempPoint:Landroid/graphics/Point;

.field public mTripleTapAndHoldStartedTime:J

.field final mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 3
    sput-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    .line 5
    sput-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 7
    sget v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 9
    sput v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->MAX_SCALE:F

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZZI)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move v1, p8

    .line 3
    move v2, p5

    .line 4
    move v3, p7

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;-><init>(IZZLcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V

    .line 10
    new-instance p3, Landroid/graphics/Point;

    .line 12
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 15
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    .line 17
    const-wide/16 p3, 0x0

    .line 19
    iput-wide p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    .line 21
    sget-boolean p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 23
    if-eqz p3, :cond_0

    .line 25
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 27
    const-string p4, "WindowMagnificationGestureHandler() , displayId = "

    .line 29
    const-string p5, ")"

    .line 31
    invoke-static {p8, p4, p5, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 38
    new-instance p2, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    .line 40
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;

    .line 42
    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    .line 45
    invoke-direct {p2, p1, p3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;)V

    .line 48
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    .line 50
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    .line 52
    invoke-direct {p3, p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;)V

    .line 55
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    .line 57
    new-instance p2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 59
    invoke-direct {p2, p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 64
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    .line 66
    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    .line 69
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    .line 71
    new-instance p3, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    .line 73
    new-instance p4, Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    .line 75
    new-instance p5, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

    .line 77
    invoke-direct {p5, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    .line 80
    sget p6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->MAX_SCALE:F

    .line 82
    invoke-direct {p4, p1, p6, p5}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;-><init>(Landroid/content/Context;FLcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;)V

    .line 85
    invoke-direct {p3, p0, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/PanningScalingHandler;)V

    .line 88
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final clearEvents(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1002

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 13
    return-void
.end method

.method public final enableWindowMagnifier(IFF)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "enableWindowMagnifier :"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 41
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 43
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    .line 48
    move-result v0

    .line 49
    sget v1, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 51
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 56
    move-result v0

    .line 57
    sget v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->MAX_SCALE:F

    .line 59
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 62
    move-result v5

    .line 63
    sget-object v8, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 65
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 67
    iget v4, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 69
    const/4 v10, 0x0

    .line 70
    move v6, p2

    .line 71
    move v7, p3

    .line 72
    move v9, p1

    .line 73
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    .line 76
    return-void
.end method

.method public final getMode()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final handleShortcutTriggered()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 12
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 14
    int-to-float v1, v1

    .line 15
    const/high16 v2, 0x40000000    # 2.0f

    .line 17
    div-float/2addr v1, v2

    .line 18
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 20
    int-to-float v0, v0

    .line 21
    div-float/2addr v0, v2

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FF)V

    .line 25
    return-void
.end method

.method public logMagnificationTripleTapAndHoldSession(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTapAndHoldSession(J)V

    .line 4
    return-void
.end method

.method public final magnificationDisactivate$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_1

    .line 11
    sget-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 17
    const-string/jumbo v2, "disableWindowMagnifier()"

    .line 20
    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    invoke-virtual {v0, v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 27
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onDestroy(); delayed = "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 15
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 34
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 36
    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 39
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 44
    return-void
.end method

.method public final onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->mPanningScalingHandler:Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    .line 5
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 7
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 17
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 20
    return-void
.end method

.method public onTripleTapAndHold(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 7
    const-string/jumbo v1, "onTripleTapAndHold()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    .line 15
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 17
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 22
    move-result v1

    .line 23
    iput-boolean v1, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mEnabledBeforeDrag:Z

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(IFF)V

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    .line 43
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 48
    return-void
.end method

.method public releaseTripleTapAndHold()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mEnabledBeforeDrag:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 10
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 20
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    .line 22
    const-wide/16 v2, 0x0

    .line 24
    cmp-long v0, v0, v2

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    move-result-wide v0

    .line 32
    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    .line 34
    sub-long/2addr v0, v4

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->logMagnificationTripleTapAndHoldSession(J)V

    .line 38
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTripleTapAndHoldStartedTime:J

    .line 40
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "WindowMagnificationGestureHandler{mDetectingState="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mDelegatingState="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mViewportDraggingState="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", mMagnifiedInteractionState="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", mCurrentState="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 50
    const-string/jumbo v2, "null"

    .line 53
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v1, v2

    .line 65
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", mPreviousState="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 75
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", mMagnificationConnectionManager="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", mDisplayId="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 105
    const/16 v1, 0x7d

    .line 107
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method

.method public final toggleMagnification(FF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const-string/jumbo v4, "status"

    .line 13
    const-string/jumbo v5, "com.samsung.accessibility.action.GET_MAGNFICATION_STATUS"

    .line 16
    const/4 v6, 0x1

    .line 17
    if-eqz v2, :cond_2

    .line 19
    sget-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 21
    if-eqz v2, :cond_0

    .line 23
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 25
    const-string/jumbo v7, "disableWindowMagnifier()"

    .line 28
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    invoke-virtual {v0, v1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 34
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "accessibility_am_magnification_mode"

    .line 42
    const/4 v2, -0x2

    .line 43
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 46
    move-result v0

    .line 47
    if-ne v0, v6, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v6, v3

    .line 51
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 53
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 64
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 66
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 69
    if-eqz v6, :cond_3

    .line 71
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(IFF)V

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(IFF)V

    .line 78
    new-instance p1, Landroid/content/Intent;

    .line 80
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 83
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 91
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 93
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 96
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 98
    const-string/jumbo p1, "com.android.server.accessibility.MagnificationController"

    .line 101
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    :cond_3
    :goto_1
    return-void
.end method

.method public final transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "state transition: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 20
    const-string/jumbo v3, "null"

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, " -> "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, " at "

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v2, Ljava/lang/RuntimeException;

    .line 63
    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 66
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 69
    move-result-object v2

    .line 70
    const/4 v3, 0x1

    .line 71
    const/4 v4, 0x5

    .line 72
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 78
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    const-class v2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    const-string v3, ""

    .line 97
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 110
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 115
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 117
    if-eqz v0, :cond_3

    .line 119
    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onExit()V

    .line 122
    :cond_3
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    .line 124
    if-eqz p1, :cond_4

    .line 126
    invoke-interface {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onEnter()V

    .line 129
    :cond_4
    return-void
.end method
