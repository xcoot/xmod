.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const-string/jumbo v2, "onFailsafe"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->continueDeferredCancelAnimation()V

    .line 23
    .line 24
    .line 25
    :goto_1
    return-void
.end method
