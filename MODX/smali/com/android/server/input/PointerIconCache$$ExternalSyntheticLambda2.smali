.class public final synthetic Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/PointerIconCache;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/PointerIconCache;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/PointerIconCache;

    .line 6
    iput p2, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;->f$1:F

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/PointerIconCache;

    .line 3
    iget p0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;->f$1:F

    .line 5
    iget-object v1, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget v2, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    .line 10
    cmpl-float v2, v2, p0

    .line 12
    if-nez v2, :cond_0

    .line 14
    monitor-exit v1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iput p0, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    .line 20
    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 28
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 31
    :goto_0
    return-void

    .line 32
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method
