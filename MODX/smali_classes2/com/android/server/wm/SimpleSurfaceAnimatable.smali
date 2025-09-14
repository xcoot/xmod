.class public final Lcom/android/server/wm/SimpleSurfaceAnimatable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# instance fields
.field public final mAnimationLeashFactory:Ljava/util/function/Supplier;

.field public final mAnimationLeashParent:Landroid/view/SurfaceControl;

.field public final mCommitTransactionRunnable:Ljava/lang/Runnable;

.field public final mHeight:I

.field public final mParentSurfaceControl:Landroid/view/SurfaceControl;

.field public final mPendingTransaction:Ljava/util/function/Supplier;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mSyncTransaction:Ljava/util/function/Supplier;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mWidth:I

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mWidth:I

    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mHeight:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mHeight:I

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSyncTransaction:Ljava/util/function/Supplier;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mPendingTransaction:Ljava/util/function/Supplier;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final commitPendingTransaction()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashParent:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSurfaceHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSurfaceWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mSyncTransaction:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 8
    .line 9
    return-object p0
.end method

.method public final makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/SurfaceControl$Builder;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
