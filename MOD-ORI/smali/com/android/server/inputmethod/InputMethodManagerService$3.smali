.class public final Lcom/android/server/inputmethod/InputMethodManagerService$3;
.super Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

.field public final synthetic val$delegatePackageName:Ljava/lang/String;

.field public final synthetic val$delegatorPackageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$userId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatePackageName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatorPackageName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onResult(Ljava/lang/CharSequence;)V
    .locals 6

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$userId:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatePackageName:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$delegatorPackageName:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/inputmethod/HandwritingModeController;->prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$callback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onResult(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method
