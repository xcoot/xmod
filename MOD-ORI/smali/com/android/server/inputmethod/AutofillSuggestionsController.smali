.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

.field public mCurHostInputToken:Landroid/os/IBinder;

.field public mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

.field public mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final performOnCreateInlineSuggestionsRequest()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    new-instance v8, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 17
    .line 18
    iget v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 19
    .line 20
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 21
    .line 22
    move-object v4, v3

    .line 23
    check-cast v4, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    .line 24
    .line 25
    iget-object v5, v2, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    .line 26
    .line 27
    move-object v2, v8

    .line 28
    move-object v3, p0

    .line 29
    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;-><init>(Lcom/android/server/inputmethod/AutofillSuggestionsController;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 35
    .line 36
    :try_start_0
    iget-object v1, v1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 37
    .line 38
    invoke-interface {v1, v0, v8}, Lcom/android/internal/inputmethod/IInputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "AutofillSuggestionsController"

    .line 48
    .line 49
    const-string v1, "No IME connected! Abandoning inline suggestions creation request."

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 56
    .line 57
    return-void
.end method
