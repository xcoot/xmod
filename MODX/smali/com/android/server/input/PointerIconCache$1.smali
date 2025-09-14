.class public final Lcom/android/server/input/PointerIconCache$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/PointerIconCache;


# direct methods
.method public constructor <init>(Lcom/android/server/input/PointerIconCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    .line 3
    iget-object v0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->updateDisplayDensityLocked(I)Z

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    .line 3
    const-string v0, "Reloading pointer icons due to density change on display: "

    .line 5
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->updateDisplayDensityLocked(I)Z

    .line 11
    move-result v2

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
    const-string v2, "PointerIconCache"

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/util/SparseArray;

    .line 43
    if-nez v0, :cond_1

    .line 45
    monitor-exit v1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 50
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 58
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 61
    :goto_0
    return-void

    .line 62
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    .line 3
    iget-object v0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    .line 8
    iget-object v1, v1, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    .line 15
    iget-object v1, v1, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 20
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    .line 22
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
