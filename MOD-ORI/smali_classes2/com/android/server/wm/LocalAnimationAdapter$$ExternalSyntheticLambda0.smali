.class public final synthetic Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LocalAnimationAdapter;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LocalAnimationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LocalAnimationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, p0, v0}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
