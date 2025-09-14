.class public final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x20

    .line 9
    .line 10
    :try_start_0
    const-string v3, "IMMS.applyImeVisibility"

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    .line 16
    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/16 v4, 0x2f

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0, p3, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 31
    .line 32
    .line 33
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    if-eqz p2, :cond_1

    .line 41
    .line 42
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserActivity()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p0, p3, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 59
    .line 60
    iget v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v6, p3

    .line 64
    move v7, p2

    .line 65
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 66
    .line 67
    .line 68
    monitor-exit v3

    .line 69
    goto :goto_0

    .line 70
    :goto_1
    return-void

    .line 71
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mcreateInputContentUriToken(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhideMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p4, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {p4, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final notifyUserActionAsync()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 18
    .line 19
    if-eq v2, p0, :cond_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    iget p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 28
    .line 29
    iget v2, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserId:I

    .line 30
    .line 31
    if-eq p0, v2, :cond_1

    .line 32
    .line 33
    monitor-exit v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 40
    .line 41
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 62
    .line 63
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 75
    .line 76
    invoke-virtual {v0, v2, p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-gtz p0, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    .line 84
    .line 85
    aget v2, v0, p0

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-static {v0, v4, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    aput v2, v0, v4

    .line 93
    .line 94
    :cond_4
    :goto_0
    monitor-exit v1

    .line 95
    :goto_1
    return-void

    .line 96
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0
.end method

.method public final onStylusHandwritingReady(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/16 v0, 0x44c

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final reportFullscreenModeAsync(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    monitor-exit v1

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    iput-boolean p1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 36
    .line 37
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_2
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZI)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    monitor-exit v1

    .line 58
    :goto_1
    return-void

    .line 59
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw p0
.end method

.method public final reportStartInputAsync(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    monitor-exit v1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/os/IBinder;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 32
    .line 33
    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iput-object p1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    :goto_0
    return-void

    .line 40
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final resetStylusHandwriting(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "IME requested to finish handwriting with a mismatched requestId: "

    .line 7
    .line 8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/OptionalInt;->isPresent()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/OptionalInt;->getAsInt()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eq v2, p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    const-string v2, "InputMethodManagerService"

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    const p1, 0xf423f

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    const/16 p1, 0x442

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    .line 65
    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final setHandwritingSurfaceNotTouchable(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 21
    .line 22
    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 23
    .line 24
    or-int/lit8 v0, v0, 0x8

    .line 25
    .line 26
    iput v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 30
    .line 31
    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 32
    .line 33
    and-int/lit8 v0, v0, -0x9

    .line 34
    .line 35
    iput v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 36
    .line 37
    :goto_0
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 45
    .line 46
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method public final setImeWindowStatusAsync(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit v2

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eq p0, v1, :cond_1

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    monitor-exit v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iput p1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 35
    .line 36
    iput p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 39
    .line 40
    .line 41
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const-string p0, "InputMethodManagerService"

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v2, "setImeWindowStatus: vis="

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ", backDisposition="

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x2

    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v2, 0x1

    .line 73
    if-eq p2, v2, :cond_3

    .line 74
    .line 75
    if-eq p2, p0, :cond_2

    .line 76
    .line 77
    and-int/lit8 p2, p1, 0x2

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    :cond_2
    move p2, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    move p2, v1

    .line 84
    :goto_0
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 85
    .line 86
    and-int/2addr p0, p1

    .line 87
    if-eqz p0, :cond_4

    .line 88
    .line 89
    move v1, v2

    .line 90
    :cond_4
    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(ZZ)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void

    .line 94
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p0
.end method

.method public final setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodAndSubtype(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 29
    .line 30
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 45
    .line 46
    invoke-virtual {v0, v2, v3, p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    :goto_2
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 67
    .line 68
    .line 69
    :goto_3
    return-void
.end method

.method public final showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshowMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p4, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {p4, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final switchKeyboardLayoutAsync(I)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 23
    .line 24
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchKeyboardLayoutLocked(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToPreviousInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final updateStatusIconAsync(Ljava/lang/String;I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    monitor-exit v1

    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    :try_start_1
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 30
    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    iget-object p1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 34
    .line 35
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    if-eqz p1, :cond_4

    .line 45
    .line 46
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iget v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 49
    .line 50
    invoke-static {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    :try_start_2
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    goto :goto_0

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-object v4, v6

    .line 69
    :goto_0
    if-eqz v4, :cond_2

    .line 70
    .line 71
    :try_start_3
    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object p0, v6

    .line 77
    :goto_1
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 78
    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    :cond_3
    move-object v12, v6

    .line 90
    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 91
    .line 92
    iget-object v7, v4, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    move-object v9, p1

    .line 96
    move v10, p2

    .line 97
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 101
    .line 102
    iget-object p1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 103
    .line 104
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 107
    .line 108
    const/4 p2, 0x1

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :goto_2
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_4
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    monitor-exit v1

    .line 121
    :goto_4
    return-void

    .line 122
    :goto_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    throw p0
.end method
