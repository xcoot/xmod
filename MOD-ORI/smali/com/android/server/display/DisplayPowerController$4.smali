.class public final Lcom/android/server/display/DisplayPowerController$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationEndRunnable:Lcom/android/server/display/DisplayPowerController$3;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationEndRunnable:Lcom/android/server/display/DisplayPowerController$3;

    .line 15
    .line 16
    const-wide/16 v1, 0xc8

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 19
    .line 20
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0xa

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onScreenOff()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "[api] WindowManagerPolicy.ScreenOffListener : called onScreenOff()"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 12
    .line 13
    invoke-virtual {v2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
