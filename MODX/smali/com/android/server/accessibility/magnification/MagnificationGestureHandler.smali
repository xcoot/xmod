.class public abstract Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_ALL:Z

.field public static final DEBUG_EVENT_STREAM:Z


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

.field public final mDebugInputEventHistory:Ljava/util/Queue;

.field public final mDebugOutputEventHistory:Ljava/util/Queue;

.field public final mDetectShortcutTrigger:Z

.field public final mDetectSingleFingerTripleTap:Z

.field public final mDisplayId:I

.field public final mLogTag:Ljava/lang/String;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MagnificationGestureHandler"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 10
    sput-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    .line 12
    return-void
.end method

.method public constructor <init>(IZZLcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 14
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 16
    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 18
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 21
    iput-boolean p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 23
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 25
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    .line 27
    const/4 p1, 0x0

    .line 28
    sget-boolean p2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    .line 30
    if-eqz p2, :cond_0

    .line 32
    new-instance p3, Ljava/util/ArrayDeque;

    .line 34
    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object p3, p1

    .line 39
    :goto_0
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    .line 41
    if-eqz p2, :cond_1

    .line 43
    new-instance p1, Ljava/util/ArrayDeque;

    .line 45
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    .line 50
    return-void
.end method

.method public static storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 17
    move-result-wide v0

    .line 18
    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/view/MotionEvent;

    .line 24
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 27
    move-result-wide v2

    .line 28
    sub-long/2addr v0, v2

    .line 29
    const-wide/16 v2, 0x1388

    .line 31
    cmp-long v0, v0, v2

    .line 33
    if-lez v0, :cond_0

    .line 35
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/view/MotionEvent;

    .line 41
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    .line 7
    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V

    .line 10
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/RuntimeException;

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    const-string v0, "Exception downstream following input events: "

    .line 21
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, "\nTransformed into output events: "

    .line 31
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    .line 36
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    throw p2

    .line 47
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 50
    return-void
.end method

.method public abstract getMode()I
.end method

.method public abstract handleShortcutTriggered()V
.end method

.method public abstract magnificationDisactivate$1()V
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onMotionEvent("

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ")"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 32
    const-wide/16 v1, 0x3000

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v4, "event="

    .line 45
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v4, ";rawEvent="

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v4, ";policyFlags="

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    const-string v4, "MagnificationGestureHandler.onMotionEvent"

    .line 73
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 76
    :cond_1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_EVENT_STREAM:Z

    .line 78
    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    .line 82
    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V

    .line 85
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 87
    if-nez v0, :cond_3

    .line 89
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 91
    if-eqz v0, :cond_4

    .line 93
    :cond_3
    const/16 v0, 0x1002

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_5

    .line 101
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 111
    move-result p1

    .line 112
    const/4 p2, 0x3

    .line 113
    iget p3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    .line 117
    if-nez p1, :cond_7

    .line 119
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    .line 122
    move-result p0

    .line 123
    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 125
    iget p1, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 127
    if-eq p1, p2, :cond_6

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    invoke-virtual {v0, p3, p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 133
    goto :goto_0

    .line 134
    :cond_7
    const/4 v1, 0x1

    .line 135
    if-eq p1, v1, :cond_8

    .line 137
    if-ne p1, p2, :cond_a

    .line 139
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    .line 142
    move-result p0

    .line 143
    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 145
    iget p1, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 147
    if-eq p1, p2, :cond_9

    .line 149
    goto :goto_0

    .line 150
    :cond_9
    invoke-virtual {v0, p3, p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 153
    :cond_a
    :goto_0
    return-void
.end method

.method public abstract onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method
