.class public interface abstract Lcom/android/server/wm/SurfaceAnimator$Animatable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract commitPendingTransaction()V
.end method

.method public getAnimationLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public abstract getAnimationLeashParent()Landroid/view/SurfaceControl;
.end method

.method public abstract getParentSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getSurfaceHeight()I
.end method

.method public abstract getSurfaceWidth()I
.end method

.method public getSyncState()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
.end method

.method public getSyncTransactionCommitCallbackDepth()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
.end method

.method public abstract onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
