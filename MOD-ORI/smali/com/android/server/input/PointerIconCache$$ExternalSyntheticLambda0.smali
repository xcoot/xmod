.class public final synthetic Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/PointerIconCache;

.field public final synthetic f$1:I

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/PointerIconCache;IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/PointerIconCache;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/PointerIconCache;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget v3, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconSizeScale:F

    .line 11
    .line 12
    cmpl-float v3, v3, p0

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget v3, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconColor:I

    .line 17
    .line 18
    if-ne v3, v1, :cond_0

    .line 19
    .line 20
    monitor-exit v2

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iput p0, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconSizeScale:F

    .line 25
    .line 26
    iput v1, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconColor:I

    .line 27
    .line 28
    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 31
    .line 32
    .line 33
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 35
    .line 36
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method
