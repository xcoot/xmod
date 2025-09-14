.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/AnimationAdapter;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/Task;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
