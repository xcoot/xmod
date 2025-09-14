.class public final Lcom/android/server/display/RampAnimator$DualRampAnimator$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/RampAnimator;->performNextAnimationStep(J)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 19
    .line 20
    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/RampAnimator;->performNextAnimationStep(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$4;->onAnimationEnd()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    .line 56
    .line 57
    :goto_0
    return-void
.end method
