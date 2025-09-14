.class public final synthetic Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    .line 8
    iput p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    .line 5
    iget p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 9
    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-class v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 16
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 22
    iget v3, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    .line 24
    invoke-virtual {v2, p0, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->transferTouchFocusToImeWindow(ILandroid/os/IBinder;I)Z

    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 30
    const-string p0, "RemoteInlineSuggestionViewConnector"

    .line 32
    const-string v1, "Cannot transfer touch focus from suggestion to IME"

    .line 34
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    .line 39
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;->run()V

    .line 42
    :cond_0
    return-void
.end method
