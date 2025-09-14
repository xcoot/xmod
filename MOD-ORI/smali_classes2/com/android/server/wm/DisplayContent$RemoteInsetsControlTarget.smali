.class public final Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# instance fields
.field public final mCanShowTransient:Z

.field public final mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

.field public mRequestedVisibleTypes:I

.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/view/IDisplayWindowInsetsController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRequestedVisibleTypes:I

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const p2, 0x111020b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mCanShowTransient:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final canShowTransient()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mCanShowTransient:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getRequestedVisibleTypes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRequestedVisibleTypes:I

    .line 2
    .line 3
    return p0
.end method

.method public final hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 1

    .line 1
    const/16 p2, 0x18

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p3, p2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, p1, v0, p3}, Landroid/view/IDisplayWindowInsetsController;->hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "WindowManager"

    .line 19
    .line 20
    const-string v0, "Failed to deliver hideInsets"

    .line 21
    .line 22
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0, p3, p2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final isRequestedVisible(I)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRequestedVisibleTypes:I

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    and-int/2addr v0, p1

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-boolean v0, v0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    :cond_2
    iget p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRequestedVisibleTypes:I

    .line 36
    .line 37
    and-int/2addr p0, p1

    .line 38
    if-eqz p0, :cond_4

    .line 39
    .line 40
    :cond_3
    move v1, v2

    .line 41
    :cond_4
    return v1
.end method

.method public final notifyInsetsControlChanged(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, v1, p0}, Landroid/view/IDisplayWindowInsetsController;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "WindowManager"

    .line 19
    .line 20
    const-string v0, "Failed to deliver inset control state change"

    .line 21
    .line 22
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final setImeInputTargetRequestedVisibility(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroid/view/IDisplayWindowInsetsController;->setImeInputTargetRequestedVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "WindowManager"

    .line 15
    .line 16
    const-string v0, "Failed to deliver setImeInputTargetRequestedVisibility"

    .line 17
    .line 18
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public final showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p3, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2, p3}, Landroid/view/IDisplayWindowInsetsController;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "WindowManager"

    .line 18
    .line 19
    const-string p2, "Failed to deliver showInsets"

    .line 20
    .line 21
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, p3, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
