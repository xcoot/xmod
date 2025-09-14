.class public final synthetic Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result p0

    .line 14
    check-cast p3, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p0, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 26
    check-cast p3, Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    .line 28
    iget-object p0, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 33
    if-nez v0, :cond_3

    .line 35
    iget-boolean v0, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    .line 37
    if-eqz v0, :cond_0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    .line 43
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 46
    if-eqz p2, :cond_1

    .line 48
    if-eqz p3, :cond_1

    .line 50
    iput-object p2, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 52
    iput-object p3, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    .line 54
    iget-object p2, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 56
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    .line 64
    if-eqz p2, :cond_2

    .line 66
    iget-object p3, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 68
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 71
    const/4 p2, 0x0

    .line 72
    iput-object p2, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    .line 74
    :cond_2
    monitor-exit p0

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    :goto_1
    monitor-exit p0

    .line 77
    :goto_2
    return-void

    .line 78
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p1

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
