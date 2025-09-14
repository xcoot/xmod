.class public final Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;


# instance fields
.field public final mSession:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public final onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onInlineSuggestionsRequest() received: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "AutofillInlineSuggestionsRequestSession"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 27
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 33
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 41
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 44
    move-result-object p1

    .line 45
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    :cond_1
    return-void
.end method

.method public final onInlineSuggestionsSessionInvalidated()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillInlineSuggestionsRequestSession"

    .line 7
    const-string/jumbo v1, "onInlineSuggestionsSessionInvalidated() called."

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 31
    move-result-object v0

    .line 32
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    :cond_1
    return-void
.end method

.method public final onInlineSuggestionsUnsupported()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillInlineSuggestionsRequestSession"

    .line 7
    const-string/jumbo v1, "onInlineSuggestionsUnsupported() called."

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, p0, v1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    :cond_1
    return-void
.end method

.method public final onInputMethodFinishInput()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillInlineSuggestionsRequestSession"

    .line 7
    const-string/jumbo v1, "onInputMethodFinishInput() received"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 29
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    invoke-static {v0, p0, v1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 34
    move-result-object v0

    .line 35
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 37
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    :cond_1
    return-void
.end method

.method public final onInputMethodFinishInputView()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillInlineSuggestionsRequestSession"

    .line 7
    const-string/jumbo v1, "onInputMethodFinishInputView() received"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 29
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 36
    move-result-object v0

    .line 37
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    :cond_1
    return-void
.end method

.method public final onInputMethodShowInputRequested(Z)V
    .locals 1

    .line 1
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz p0, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v0, "onInputMethodShowInputRequested() received: "

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    const-string p1, "AutofillInlineSuggestionsRequestSession"

    .line 22
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public final onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onInputMethodStartInput() received on "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "AutofillInlineSuggestionsRequestSession"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 27
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 33
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda2;

    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 47
    move-result-object p1

    .line 48
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    :cond_1
    return-void
.end method

.method public final onInputMethodStartInputView()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillInlineSuggestionsRequestSession"

    .line 7
    const-string/jumbo v1, "onInputMethodStartInputView() received"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 29
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    invoke-static {v0, p0, v1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 34
    move-result-object v0

    .line 35
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 37
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    :cond_1
    return-void
.end method
