.class public final Lcom/android/server/display/DisplayPowerController$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 30
    .line 31
    const/4 v0, 0x6

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
