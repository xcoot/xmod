.class public final Lcom/android/server/wm/RecentsAnimationController$1;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final continueDeferredCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-boolean p0, v0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean p0, v0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    iput-boolean p0, v0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    .line 25
    .line 26
    const-string/jumbo v2, "rootTaskOrderChanged"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final onAppTransitionCancelledLocked(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController$1;->continueDeferredCancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAppTransitionStartingLocked(J)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController$1;->continueDeferredCancel()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method
