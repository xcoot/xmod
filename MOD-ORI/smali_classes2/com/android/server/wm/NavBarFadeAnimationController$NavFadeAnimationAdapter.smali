.class public final Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;
.super Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mParent:Landroid/view/SurfaceControl;

.field public final synthetic this$0:Lcom/android/server/wm/NavBarFadeAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/NavBarFadeAnimationController;Lcom/android/server/wm/FadeAnimationController$1;Lcom/android/server/wm/SurfaceAnimationRunner;ZLandroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->this$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/FadeAnimationController$1;Lcom/android/server/wm/SurfaceAnimationRunner;Z)V

    .line 4
    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->mParent:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final shouldDeferAnimationFinish()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->this$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/NavBarFadeAnimationController;->mPlaySequentially:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-boolean p0, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    xor-int/2addr p0, v2

    .line 18
    return p0
.end method

.method public final startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/LocalAnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->mParent:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->mParent:Landroid/view/SurfaceControl;

    .line 15
    .line 16
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 17
    .line 18
    .line 19
    const p0, 0x7fffffff

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
