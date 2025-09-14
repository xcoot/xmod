.class public final Lcom/android/server/policy/SideFpsEventHandler$2$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

.field public final synthetic this$1:Lcom/android/server/policy/SideFpsEventHandler$2;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onBiometricAction(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onBiometricAction "

    .line 2
    .line 3
    .line 4
    const-string v1, "SideFpsEventHandler"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string/jumbo p0, "mTurnOffDialog"

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->dismissDialog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onStateChanged : "

    .line 2
    .line 3
    .line 4
    const-string v1, "SideFpsEventHandler"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/SideFpsEventHandler$2$1;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    const-wide/16 v1, 0x1f4

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string p0, "STATE_IDLE"

    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->dismissDialog(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
