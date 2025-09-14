.class public final Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public final mInlineSuggestionsRequestConsumer:Ljava/util/function/Consumer;

.field public final mRequestIdCopy:I

.field public final mSessionWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;ILcom/android/server/autofill/InlineSuggestionRequestConsumer;Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mRequestIdCopy:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mInlineSuggestionsRequestConsumer:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mSessionWeakReference:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mSessionWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "InlineSuggestionRendorInfoCallbackOnResultListener"

    .line 12
    .line 13
    const-string p1, "Session is null before trying to call onResult"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string p0, "InlineSuggestionRendorInfoCallbackOnResultListener"

    .line 27
    .line 28
    const-string p1, "Session is destroyed before trying to call onResult"

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mInlineSuggestionsRequestConsumer:Ljava/util/function/Consumer;

    .line 42
    .line 43
    iget p0, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mRequestIdCopy:I

    .line 44
    .line 45
    new-instance v5, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;

    .line 46
    .line 47
    check-cast v4, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

    .line 48
    .line 49
    invoke-direct {v5, v0, v4, p0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/InlineSuggestionRequestConsumer;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v5, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method
