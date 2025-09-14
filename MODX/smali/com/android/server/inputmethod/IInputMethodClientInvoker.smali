.class public final Lcom/android/server/inputmethod/IInputMethodClientInvoker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mIsProxy:Z

.field public final mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;


# direct methods
.method public constructor <init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 10
    return-void
.end method

.method public static logRemoteException(Landroid/os/RemoteException;)V
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/os/DeadObjectException;

    .line 3
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "IPC failed at IInputMethodClientInvoker#"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 19
    move-result-object v1

    .line 20
    array-length v2, v1

    .line 21
    const/4 v3, 0x4

    .line 22
    if-gt v2, v3, :cond_0

    .line 24
    const-string v1, "<bottom of call stack>"

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    aget-object v1, v1, v3

    .line 29
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "InputMethodManagerService"

    .line 42
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    return-void

    .line 32
    :goto_2
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 34
    if-eqz p1, :cond_1

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 41
    :cond_1
    throw p0
.end method

.method public final onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 5
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    return-void

    .line 32
    :goto_2
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 34
    if-eqz p1, :cond_1

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 41
    :cond_1
    throw p0
.end method

.method public final onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    return-void

    .line 32
    :goto_2
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 34
    if-eqz p1, :cond_1

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 41
    :cond_1
    throw p0
.end method

.method public final setActive(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setActive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZI)V

    .line 22
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :goto_0
    return-void
.end method

.method public final setImeTraceEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 7
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;

    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZI)V

    .line 22
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :goto_0
    return-void
.end method

.method public final setImeVisibility(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 7
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZI)V

    .line 22
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :goto_0
    return-void
.end method
