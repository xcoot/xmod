.class public final Lcom/android/server/autofill/InlineSuggestionRequestConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

.field public final mViewStateWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mViewStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mViewStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/autofill/ViewState;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string p0, "InlineSuggestionRequestConsumer"

    .line 22
    .line 23
    const-string p1, "assistDataReceiver is null when accepting new inline suggestionrequests"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    if-nez p0, :cond_1

    .line 30
    .line 31
    const-string p0, "InlineSuggestionRequestConsumer"

    .line 32
    .line 33
    const-string/jumbo p1, "view state is null when accepting new inline suggestion requests"

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v1

    .line 45
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    if-eqz p1, :cond_3

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v2, 0x0

    .line 59
    :goto_0
    iput-boolean v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 60
    .line 61
    iput-object p1, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    .line 64
    .line 65
    .line 66
    const/high16 p1, 0x10000

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 69
    .line 70
    .line 71
    monitor-exit v1

    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    :goto_1
    monitor-exit v1

    .line 76
    :goto_2
    return-void

    .line 77
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method
