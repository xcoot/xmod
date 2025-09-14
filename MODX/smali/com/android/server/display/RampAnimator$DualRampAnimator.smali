.class public final Lcom/android/server/display/RampAnimator$DualRampAnimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

.field public mAwaitingCallback:Z

.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFirst:Lcom/android/server/display/RampAnimator;

.field public mListener:Lcom/android/server/display/DisplayPowerController$4;

.field public final mSecond:Lcom/android/server/display/RampAnimator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/display/DisplayPowerState$1;Lcom/android/server/display/DisplayPowerState$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    .line 11
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 17
    new-instance v0, Lcom/android/server/display/RampAnimator;

    .line 19
    invoke-direct {v0, p1, p2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    .line 22
    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 24
    new-instance p2, Lcom/android/server/display/RampAnimator;

    .line 26
    invoke-direct {p2, p1, p3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    .line 29
    iput-object p2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 31
    return-void
.end method


# virtual methods
.method public final getTarget()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 3
    iget p0, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    .line 5
    return p0
.end method

.method public final isAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 5
    if-nez v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 9
    iget-boolean p0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 11
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method
