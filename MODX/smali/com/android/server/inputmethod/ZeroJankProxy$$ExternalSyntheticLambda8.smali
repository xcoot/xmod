.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Landroid/window/ImeOnBackInvokedDispatcher;

.field public final synthetic f$13:I

.field public final synthetic f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroid/view/inputmethod/EditorInfo;

.field public final synthetic f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final synthetic f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 6
    iput p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 10
    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$3:Landroid/os/IBinder;

    .line 12
    iput p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$4:I

    .line 14
    iput p6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$5:I

    .line 16
    iput p7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$6:I

    .line 18
    iput-object p8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$7:Landroid/view/inputmethod/EditorInfo;

    .line 20
    iput-object p9, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 22
    iput-object p10, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 24
    iput p11, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$10:I

    .line 26
    iput p12, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$11:I

    .line 28
    iput-object p13, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$12:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 30
    iput p14, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$13:I

    .line 32
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 3
    iget v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$1:I

    .line 5
    iget-object v14, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 7
    iget-object v4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$3:Landroid/os/IBinder;

    .line 9
    iget v5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$4:I

    .line 11
    iget v6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$5:I

    .line 13
    iget v7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$6:I

    .line 15
    iget-object v8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$7:Landroid/view/inputmethod/EditorInfo;

    .line 17
    iget-object v9, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$8:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 19
    iget-object v10, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$9:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 21
    iget v11, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$10:I

    .line 23
    iget v12, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$11:I

    .line 25
    iget-object v13, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$12:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 27
    iget p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;->f$13:I

    .line 29
    iget-object v1, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 31
    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 33
    move-object v3, v14

    .line 34
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    .line 37
    move-result-object v1

    .line 38
    const-string v2, "Client that requested startInputOrWindowGainedFocus is no longer bound. InputBindResult: "

    .line 40
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    .line 42
    monitor-enter v3

    .line 43
    :try_start_0
    iget-object v4, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 45
    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 47
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 49
    invoke-interface {v14}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 59
    iget-object v4, v4, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 61
    if-eqz v4, :cond_1

    .line 63
    iget-boolean v2, v4, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 65
    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v4, v1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-direct {v2, v4, v1, p0, v5}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;II)V

    .line 77
    iget-object p0, v4, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :cond_1
    const-string v4, "InputMethodManagerService"

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, " for startInputSeq: "

    .line 97
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget p0, v1, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    .line 113
    const/4 v1, 0x1

    .line 114
    if-ne p0, v1, :cond_3

    .line 116
    iget-object p0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 118
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 120
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 122
    monitor-enter v0

    .line 123
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 125
    invoke-interface {v14}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 138
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 141
    goto :goto_1

    .line 142
    :catchall_1
    move-exception p0

    .line 143
    goto :goto_2

    .line 144
    :cond_2
    :goto_1
    monitor-exit v0

    .line 145
    goto :goto_3

    .line 146
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    throw p0

    .line 148
    :cond_3
    :goto_3
    return-void

    .line 149
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    throw p0
.end method
