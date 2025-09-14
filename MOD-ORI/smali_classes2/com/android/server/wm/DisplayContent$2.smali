.class public final Lcom/android/server/wm/DisplayContent$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic val$targetWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$2;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$2;->val$targetWin:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onVisibleRequestedChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$2;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$2;->val$targetWin:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 8
    .line 9
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZZ)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
