.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/BackNavigationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/BackNavigationController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->run()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
