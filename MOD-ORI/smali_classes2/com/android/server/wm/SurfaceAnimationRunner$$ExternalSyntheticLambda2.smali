.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final makeAnimator()Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
