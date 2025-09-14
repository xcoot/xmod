.class public final Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final performCornerAction(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 9
    const-string/jumbo v0, "com.samsung.android.app.aodservice.sublauncher.REQUEST_FOCUS_NOTIFICATION"

    .line 12
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_0
    const-string/jumbo v0, "statusbar"

    .line 24
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 34
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p0, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 39
    move-result p0

    .line 40
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandStateToType(I)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 46
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_2
    :goto_0
    return-void

    .line 56
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 58
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    throw p1
.end method
