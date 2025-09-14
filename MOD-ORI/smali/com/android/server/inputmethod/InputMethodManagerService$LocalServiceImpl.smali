.class public final Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


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
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(II)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getInputMethodListAsUser(I)Ljava/util/List;
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x3e8

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(III)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    monitor-exit v0

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final hideAllInputMethods(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/16 v1, 0x40b

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final maybeFinishStylusHandwriting()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/16 v1, 0x456

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/AccessibilityManagerInternal;->isTouchExplorationEnabled(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;Z)V

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final onImeParentChanged()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final onSessionForAccessibilityCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 11

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 39
    .line 40
    iget-object v3, v2, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 41
    .line 42
    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 43
    .line 44
    invoke-direct {v4, v2, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;-><init>(Lcom/android/server/inputmethod/ClientState;ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 51
    .line 52
    const/16 v2, 0xb

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-virtual {p1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZ)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 61
    .line 62
    iget-object v2, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 63
    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    :goto_0
    move-object v5, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-instance p1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 79
    .line 80
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 81
    .line 82
    iget v9, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 83
    .line 84
    const/16 v4, 0x10

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    move-object v3, p1

    .line 89
    invoke-direct/range {v3 .. v10}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 99
    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;II)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    :goto_2
    monitor-exit v0

    .line 121
    return-void

    .line 122
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p0
.end method

.method public final onSwitchKeyboardLayoutShortcut(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchKeyboardLayoutLocked(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final removeImeSurface()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/16 v0, 0x424

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

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

.method public final reportImeControl(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 9
    .line 10
    if-eq v1, p1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final setInputMethodEnabled(ILjava/lang/String;Z)Z
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne p1, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return v3

    .line 35
    :cond_1
    if-eqz p3, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    filled-new-array {p2}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    monitor-exit v0

    .line 72
    return v3

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final setInteractive(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0xbd6

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Virtual device "

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    const-string v2, "DeviceId %d is not a virtual device id."

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

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
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, " already has a custom input method component"

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public final switchToInputMethod(ILjava/lang/String;)Z
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(ILjava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final transferTouchFocusToImeWindow(ILandroid/os/IBinder;I)Z
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mCurHostInputToken:Landroid/os/IBinder;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return v2

    .line 31
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public final unbindAccessibilityFromCurrentClient(I)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 19
    .line 20
    iget v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 21
    .line 22
    iget-boolean v3, v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    :try_start_1
    iget-object v2, v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 27
    .line 28
    invoke-interface {v2, v1, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindAccessibilityService(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    :try_start_2
    invoke-static {v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v3, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-direct {v3, v2, v1, p1, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;III)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    monitor-exit v0

    .line 99
    return-void

    .line 100
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p0
.end method

.method public final updateImeWindowStatus(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x42e

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
