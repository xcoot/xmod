.class public final Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final performCornerAction(I)V
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "statusbar"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {p0, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 19
    move-result p0

    .line 20
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->getQuickSettingPanelExpandStateToType(I)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 26
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    invoke-interface {v0, p1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanelToType(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 39
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    throw p1
.end method
