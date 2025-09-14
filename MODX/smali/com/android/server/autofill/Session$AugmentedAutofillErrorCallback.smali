.class public final Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mSessionWeakRef:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 9
    const-string v0, "AugmentedAutofillErrorCallback:"

    .line 11
    invoke-static {p0, v0}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 26
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 28
    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 30
    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 33
    iput-object v2, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 35
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method
