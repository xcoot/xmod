.class public final Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z


# instance fields
.field public final mEventDispatcher:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;

.field public mLastDelegatedDownEventTime:J

.field public final mMultiTapMaxDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MotionEventDispatcherDelegate"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mEventDispatcher:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;

    .line 6
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 9
    move-result p2

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 14
    const v0, 0x10e013f

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 20
    move-result p1

    .line 21
    add-int/2addr p1, p2

    .line 22
    iput p1, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mMultiTapMaxDelay:I

    .line 24
    return-void
.end method


# virtual methods
.method public final dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const-string v1, "MotionEventDispatcherDelegate"

    .line 7
    sget-boolean v2, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 14
    move-result-wide v3

    .line 15
    iput-wide v3, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    .line 17
    if-eqz v2, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v3, "dispatchMotionEvent mLastDelegatedDownEventTime time = "

    .line 24
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    .line 29
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    if-eqz v2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v2, "dispatchMotionEvent original down time = "

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 52
    move-result-wide v2

    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 68
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mEventDispatcher:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;

    .line 70
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 75
    return-void
.end method

.method public final sendDelayedMotionEvents(JLjava/util/List;)V
    .locals 4

    .line 1
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    move-result-wide v0

    .line 8
    sub-long/2addr v0, p1

    .line 9
    iget p1, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mMultiTapMaxDelay:I

    .line 11
    int-to-long p1, p1

    .line 12
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 15
    move-result-wide p1

    .line 16
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p3

    .line 20
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 26
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;

    .line 32
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 34
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 37
    move-result-wide v2

    .line 38
    add-long/2addr v2, p1

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 42
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 44
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 46
    iget v3, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mPolicyFlags:I

    .line 48
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 51
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 53
    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 61
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 63
    if-eqz v2, :cond_2

    .line 65
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 68
    :cond_2
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    return-void
.end method
