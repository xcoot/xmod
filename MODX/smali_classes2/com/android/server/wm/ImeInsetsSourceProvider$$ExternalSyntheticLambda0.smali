.class public final synthetic Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 6
    .line 7
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showSoftInputInternal(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const-string p0, "IMMS.hideSoftInputInternal"

    .line 39
    .line 40
    const-wide/16 v0, 0x20

    .line 41
    .line 42
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v4, "InputMethodManagerService#hideSoftInput"

    .line 50
    .line 51
    iget-object v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 52
    .line 53
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 54
    .line 55
    .line 56
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    .line 57
    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 60
    .line 61
    .line 62
    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x4

    .line 67
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    .line 75
    .line 76
    monitor-exit p0

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception v2

    .line 81
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    .line 86
    .line 87
    throw v2

    .line 88
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw v0

    .line 90
    :cond_1
    :goto_1
    return-void
.end method
