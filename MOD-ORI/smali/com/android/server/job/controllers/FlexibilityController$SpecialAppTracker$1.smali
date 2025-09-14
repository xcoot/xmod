.class public final Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    const-string p2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateCarrierPrivilegedCallbackRegistration()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 36
    .line 37
    new-instance p2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-direct {p2, v0, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
