.class public final Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;


# static fields
.field public static final DBG:Z


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

.field public mDelayedEventQueue:Ljava/util/List;

.field public final mGesturesObserver:Lcom/android/server/accessibility/magnification/GesturesObserver;

.field public mLastDownEventTime:J

.field public mLastEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MagnificationGesturesObserver"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    .line 9
    .line 10
    return-void
.end method

.method public varargs constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/accessibility/magnification/GesturesObserver;

    .line 9
    .line 10
    invoke-direct {v0, p0, p2}, Lcom/android/server/accessibility/magnification/GesturesObserver;-><init>(Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mGesturesObserver:Lcom/android/server/accessibility/magnification/GesturesObserver;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "clear:"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "MagnificationGesturesObserver"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastEvent:Landroid/view/MotionEvent;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastEvent:Landroid/view/MotionEvent;

    .line 37
    .line 38
    :goto_0
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;

    .line 61
    .line 62
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 63
    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 67
    .line 68
    .line 69
    :cond_2
    iput-object v1, v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 70
    .line 71
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 76
    .line 77
    .line 78
    :cond_3
    iput-object v1, v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 82
    .line 83
    check-cast v0, Ljava/util/LinkedList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 89
    .line 90
    :cond_5
    return-void
.end method

.method public final notifyDetectionCancel()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastEvent:Landroid/view/MotionEvent;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-boolean v5, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 16
    .line 17
    iget-object v4, v4, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    iget-object v5, v4, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v7, "onGestureCancelled : delayedEventQueue = "

    .line 26
    .line 27
    .line 28
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v5, v4, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    .line 42
    .line 43
    invoke-virtual {v5, v1, v2, v0}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(JLjava/util/List;)V

    .line 44
    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x1

    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x3

    .line 60
    if-ne v0, v1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, v4, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    .line 64
    .line 65
    invoke-virtual {v4, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->clear()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MagnificationGesturesObserver{mDelayedEventQueue="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
