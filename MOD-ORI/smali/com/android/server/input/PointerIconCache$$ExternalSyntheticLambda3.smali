.class public final synthetic Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/PointerIconCache;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/PointerIconCache;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/PointerIconCache;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/PointerIconCache;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    .line 9
    .line 10
    if-ne v2, p0, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iput-boolean p0, v0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    .line 17
    .line 18
    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 21
    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method
