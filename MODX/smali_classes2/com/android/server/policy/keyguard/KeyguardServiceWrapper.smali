.class public final Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# instance fields
.field public mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

.field public mService:Lcom/android/internal/policy/IKeyguardService;


# virtual methods
.method public final addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string p2, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final dismissKeyguardToLaunch(Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->dismissKeyguardToLaunch(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->onShowingStateChanged(ZI)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->doKeyguardTimeout(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "KeyguardServiceWrapper"

    .line 31
    .line 32
    const-string v0, "Remote Exception"

    .line 33
    .line 34
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final onBootCompleted()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onDreamingStarted()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onDreamingStopped()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onFinishedBootAnim()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onFinishedBootAnim()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onFinishedGoingToSleep(IZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->onFinishedGoingToSleep(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string p2, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onFinishedWakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onScreenTurnedOff()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onScreenTurnedOn()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onScreenTurningOff()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onShortPowerPressedGoHome()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onShortPowerPressedGoHome()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->onStartedGoingToSleep(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onStartedWakingUp(IZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->onStartedWakingUp(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string p2, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onSystemKeyPressed(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->onSystemKeyPressed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onSystemReady()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setCoverOccluded(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->setCoverOccluded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setCurrentUser(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    :try_start_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->setCurrentUser(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "KeyguardServiceWrapper"

    .line 15
    .line 16
    const-string v0, "Remote Exception"

    .line 17
    .line 18
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0

    .line 24
    throw p0
.end method

.method public final setDexOccluded(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->setDexOccluded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setKeyguardEnabled(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setOccluded(ZZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setOccluded(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string p2, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string p2, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setSwitchingUser(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->setSwitchingUser(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final showDismissibleKeyguard()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->showDismissibleKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final startFingerprintAuthentication()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->startFingerprintAuthentication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v1, "Remote Exception"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final startKeyguardExitAnimation(JJ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardService;->startKeyguardExitAnimation(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string p2, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final startedEarlyWakingUp(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->startedEarlyWakingUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/policy/IKeyguardService;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "KeyguardServiceWrapper"

    .line 9
    .line 10
    const-string v0, "Remote Exception"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
