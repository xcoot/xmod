.class public final Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mEvent:Landroid/view/MotionEvent;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;

.field public mTargetState:I

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ": canceling delayed transition to "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    .line 35
    .line 36
    invoke-static {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "GestureMatcher.DelayedTransition"

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->recycleEvent()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->recycleEvent()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    .line 5
    .line 6
    invoke-static {}, Landroid/view/accessibility/Flags;->copyEventsForGestureDetection()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p4}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    .line 17
    .line 18
    invoke-virtual {p5}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    .line 26
    .line 27
    iput-object p5, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    .line 28
    .line 29
    :goto_0
    iput p6, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mPolicyFlags:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    sget-boolean p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p2, ": posting delayed transition to "

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    .line 62
    .line 63
    invoke-static {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "GestureMatcher.DelayedTransition"

    .line 75
    .line 76
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public final recycleEvent()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/accessibility/Flags;->copyEventsForGestureDetection()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    .line 28
    .line 29
    nop

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ": executing delayed transition to "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "GestureMatcher.DelayedTransition"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 43
    .line 44
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    .line 49
    .line 50
    iget v4, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mPolicyFlags:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->recycleEvent()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
