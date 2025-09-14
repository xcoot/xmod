.class public final Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->initInkWindow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    :try_start_2
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p0
.end method
