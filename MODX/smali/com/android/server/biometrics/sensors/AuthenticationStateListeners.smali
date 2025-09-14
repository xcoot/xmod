.class public final Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback binder died: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthenticationStateListeners"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Removed dead listener for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    const-string p0, "No dead listeners found"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "AuthenticationStateListeners"

    .line 26
    const-string v2, "Remote exception in notifying listener that authentication acquired"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "AuthenticationStateListeners"

    .line 26
    const-string v2, "Remote exception in notifying listener of unrecoverable authentication error"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "AuthenticationStateListeners"

    .line 26
    const-string v2, "Remote exception in notifying listener that authentication failed"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "AuthenticationStateListeners"

    .line 26
    const-string v2, "Remote exception in notifying listener of recoverable authentication error"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "AuthenticationStateListeners"

    .line 26
    const-string v2, "Remote exception in notifying listener that authentication started"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "AuthenticationStateListeners"

    .line 26
    const-string v2, "Remote exception in notifying listener that authentication stopped"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "AuthenticationStateListeners"

    .line 26
    const-string v2, "Remote exception in notifying listener that authentication succeeded"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
