.class public final Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;


# instance fields
.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isFOTAAvailableForGlobalActions()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onGlobalActionsHidden()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onGlobalActionsShown()V
    .locals 0

    .line 1
    return-void
.end method

.method public final reboot(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 5
    .line 6
    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final shutdown()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
