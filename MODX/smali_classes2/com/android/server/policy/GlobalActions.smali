.class public final Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceProvisioned:Z

.field public mGlobalActionsAvailable:Z

.field public final mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyguardShowing:Z

.field public mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

.field public final mShowTimeout:Lcom/android/server/policy/GlobalActions$1;

.field public mShowing:Z

.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/policy/GlobalActions$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Lcom/android/server/policy/GlobalActions$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 21
    .line 22
    const-class p1, Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 35
    .line 36
    iput-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActions;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions;->onGlobalActionsAvailableChanged(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string p0, "GlobalActions"

    .line 50
    .line 51
    const-string p1, "No GlobalActionsProvider found, defaulting to LegacyGlobalActions"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method


# virtual methods
.method public final ensureLegacyCreated()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 16
    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    .line 21
    .line 22
    return-void
.end method

.method public final onGlobalActionsAvailableChanged(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Lcom/android/server/policy/GlobalActions$1;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 22
    .line 23
    iget-boolean p0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->show(ZZZI)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
