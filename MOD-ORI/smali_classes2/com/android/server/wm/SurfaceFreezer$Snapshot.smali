.class public final Lcom/android/server/wm/SurfaceFreezer$Snapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field public mSurfaceControl:Landroid/view/SurfaceControl;


# virtual methods
.method public final cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    if-nez p2, :cond_2

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method
