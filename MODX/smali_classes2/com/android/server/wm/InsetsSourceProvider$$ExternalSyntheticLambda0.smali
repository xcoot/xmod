.class public final synthetic Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsSourceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsSourceProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 22
    .line 23
    int-to-float v2, v2

    .line 24
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 25
    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mHasPendingPosition:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mHasPendingPosition:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 40
    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 44
    .line 45
    invoke-virtual {v1, v0, p0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
