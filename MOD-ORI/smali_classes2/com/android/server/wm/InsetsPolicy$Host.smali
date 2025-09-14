.class public final Lcom/android/server/wm/InsetsPolicy$Host;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mName:Ljava/lang/String;

.field public final mTmpFloat9:[F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    .line 14
    .line 15
    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final dipToPx(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 0

    .line 1
    return-object p2
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getRootViewTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSystemBarsAppearance()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getSystemBarsBehavior()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final getWindowToken()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final hasAnimationCallbacks()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final notifyAnimationRunningStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final notifyInsetsChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setSystemBarsAppearance(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setSystemBarsBehavior(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateRequestedVisibleTypes(I)V
    .locals 0

    .line 1
    return-void
.end method
