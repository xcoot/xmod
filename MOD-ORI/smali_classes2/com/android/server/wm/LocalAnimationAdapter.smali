.class public Lcom/android/server/wm/LocalAnimationAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public final mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    .line 1
    const-wide v0, 0x10b00000001L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-interface {p0, p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final getBackgroundColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getBackgroundColor()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDurationHint()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getShowBackground()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getShowBackground()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getShowWallpaper()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getShowWallpaper()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getStatusBarTransitionsStartTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->calculateStatusBarTransitionStartTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p4, p3}, Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LocalAnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 9
    .line 10
    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
