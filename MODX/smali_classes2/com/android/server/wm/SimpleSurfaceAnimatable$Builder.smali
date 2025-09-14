.class public final Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAnimationLeashFactory:Ljava/util/function/Supplier;

.field public mAnimationLeashParent:Landroid/view/SurfaceControl;

.field public mCommitTransactionRunnable:Ljava/lang/Runnable;

.field public mHeight:I

.field public mParentSurfaceControl:Landroid/view/SurfaceControl;

.field public mPendingTransactionSupplier:Ljava/util/function/Supplier;

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSyncTransactionSupplier:Ljava/util/function/Supplier;

.field public mWidth:I


# virtual methods
.method public final build()Lcom/android/server/wm/SimpleSurfaceAnimatable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSyncTransactionSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mPendingTransactionSupplier:Ljava/util/function/Supplier;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mAnimationLeashFactory:Ljava/util/function/Supplier;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mCommitTransactionRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/wm/SimpleSurfaceAnimatable;-><init>(Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string/jumbo v0, "mSurfaceControl cannot be null"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "mCommitTransactionRunnable cannot be null"

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "mAnimationLeashFactory cannot be null"

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string/jumbo v0, "mPendingTransactionSupplier cannot be null"

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string/jumbo v0, "mSyncTransactionSupplier cannot be null"

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method
