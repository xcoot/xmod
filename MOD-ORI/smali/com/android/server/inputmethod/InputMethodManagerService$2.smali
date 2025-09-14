.class public final Lcom/android/server/inputmethod/InputMethodManagerService$2;
.super Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public final synthetic val$serverChannel:Landroid/view/InputChannel;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$serverChannel:Landroid/view/InputChannel;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final sessionCreated(Lcom/android/internal/inputmethod/IInputMethodSession;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->val$serverChannel:Landroid/view/InputChannel;

    .line 10
    .line 11
    invoke-virtual {v2, v3, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
