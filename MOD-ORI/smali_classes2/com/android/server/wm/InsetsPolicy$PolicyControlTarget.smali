.class public final Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final canShowTransient()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getRequestedVisibleTypes()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isRequestedVisible(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final notifyInsetsControlChanged(I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    array-length v0, p0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p1, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    if-ge v1, v0, :cond_4

    .line 17
    .line 18
    aget-object v3, p0, v1

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-object v5, p1, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 34
    .line 35
    iget-object v5, v5, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget-object v3, v3, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_1
    const/4 v3, 0x0

    .line 63
    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
