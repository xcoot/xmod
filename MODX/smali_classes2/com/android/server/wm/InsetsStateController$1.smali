.class public final Lcom/android/server/wm/InsetsStateController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notifyInsetsControlChanged(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-object v3, p0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ne v3, v4, :cond_1

    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 31
    .line 32
    new-instance v4, Lcom/android/server/wm/InsetsStateController$1$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v4, p1}, Lcom/android/server/wm/InsetsStateController$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method
