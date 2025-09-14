.class public final synthetic Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AsyncRotationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AsyncRotationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AsyncRotationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AsyncRotationController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
