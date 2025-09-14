.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 15
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onMagnificationThumbnailFeatureFlagChanged(I)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
