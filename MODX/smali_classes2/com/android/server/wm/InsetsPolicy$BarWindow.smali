.class public final Lcom/android/server/wm/InsetsPolicy$BarWindow;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mId:I

.field public mState:I

.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public static -$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x2

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    :goto_1
    iget p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 17
    .line 18
    if-eq p2, p1, :cond_2

    .line 19
    .line 20
    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 39
    .line 40
    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-interface {p2, v0, p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 10
    .line 11
    return-void
.end method
