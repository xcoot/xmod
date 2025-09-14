.class public final Lcom/android/server/inputmethod/ClientController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mClients:Landroid/util/ArrayMap;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManagerInternal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/android/server/inputmethod/ClientController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    return-void
.end method


# virtual methods
.method public final addClient(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;III)V
    .locals 8

    .line 1
    new-instance v6, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v6, p0, p1}, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ClientController;Lcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-ge v2, v0, :cond_2

    .line 16
    iget-object v3, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/server/inputmethod/ClientState;

    .line 24
    iget v4, v3, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 26
    if-ne v4, p4, :cond_1

    .line 28
    iget v4, v3, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 30
    if-ne v4, p5, :cond_1

    .line 32
    iget v3, v3, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 34
    if-eq v3, p3, :cond_0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    const-string/jumbo p1, "uid="

    .line 42
    const-string p2, "/pid="

    .line 44
    const-string v0, "/displayId="

    .line 46
    invoke-static {p4, p5, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p1

    .line 50
    const-string p2, " is already registered"

    .line 52
    invoke-static {p3, p1, p2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 65
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0, v6, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    new-instance v7, Lcom/android/server/inputmethod/ClientState;

    .line 74
    move-object v0, v7

    .line 75
    move-object v1, p1

    .line 76
    move-object v2, p2

    .line 77
    move v3, p4

    .line 78
    move v4, p5

    .line 79
    move v5, p3

    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ClientState;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;IIILcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;)V

    .line 83
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 85
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 87
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void

    .line 95
    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    throw p1
.end method

.method public final forAllClients(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/inputmethod/ClientState;

    .line 18
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/inputmethod/ClientState;

    .line 9
    return-object p0
.end method

.method public removeClient(Lcom/android/internal/inputmethod/IInputMethodClient;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->removeClientAsBinder(Landroid/os/IBinder;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final removeClientAsBinder(Landroid/os/IBinder;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/inputmethod/ClientState;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/android/server/inputmethod/ClientState;->mClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 15
    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 18
    move p1, v1

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    .line 21
    check-cast v2, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v2

    .line 27
    if-ge p1, v2, :cond_3

    .line 29
    iget-object v2, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    .line 31
    check-cast v2, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    .line 39
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const-string v3, "InputMethodManagerService"

    .line 46
    const-string/jumbo v4, "onClientRemoved"

    .line 49
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v3, v0, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 54
    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 57
    const/4 v3, 0x0

    .line 58
    iput-object v3, v0, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 60
    iput-boolean v1, v0, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 62
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 65
    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 67
    if-ne v4, v0, :cond_2

    .line 69
    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 71
    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 73
    const/16 v5, 0x16

    .line 75
    invoke-virtual {v2, v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 78
    iget-boolean v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 80
    if-eqz v4, :cond_1

    .line 82
    iput-boolean v1, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 84
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_1

    .line 90
    :try_start_0
    iget-object v4, v4, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 92
    invoke-interface {v4}, Lcom/android/internal/inputmethod/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v4

    .line 97
    invoke-static {v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 100
    :goto_1
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Lcom/android/server/AccessibilityManagerInternal;->unbindInput()V

    .line 107
    :cond_1
    iput-boolean v1, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 109
    iput-object v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 111
    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 113
    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 115
    if-ne v4, v0, :cond_2

    .line 117
    new-instance v4, Lcom/android/server/inputmethod/ImeBindingState;

    .line 119
    invoke-direct {v4, v3, v1, v3, v3}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(Landroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    .line 122
    iput-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 124
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    const/4 p0, 0x1

    .line 128
    return p0
.end method

.method public final verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 3
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/inputmethod/ClientState;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-wide/16 v4, 0x0

    .line 17
    iget v2, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 19
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result v3

    .line 23
    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 25
    move-object v6, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v0, "unknown client "

    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
.end method
