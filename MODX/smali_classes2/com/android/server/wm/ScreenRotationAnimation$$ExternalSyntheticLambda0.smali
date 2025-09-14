.class public final synthetic Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setSkipScreenshot(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
