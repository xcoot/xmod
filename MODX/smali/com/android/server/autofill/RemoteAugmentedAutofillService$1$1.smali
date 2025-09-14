.class public final Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;
.super Landroid/service/autofill/augmented/IFillCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 3
    invoke-direct {p0}, Landroid/service/autofill/augmented/IFillCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 9
    return-void
.end method

.method public final isCompleted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 3
    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    .line 5
    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 13
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->isCancelled()Z

    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 3
    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    .line 5
    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->isCancelled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 13
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    if-nez p1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 24
    move-result-object p0

    .line 25
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;

    .line 27
    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;-><init>(Landroid/os/ICancellationSignal;)V

    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 36
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$cancellationRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    :goto_0
    return-void
.end method

.method public final onSuccess(Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 5
    iget-object v1, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 7
    invoke-static {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 13
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 15
    iget-object v2, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_0
    iput-object v3, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 21
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 24
    iget-object v4, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 26
    iget v5, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$sessionId:I

    .line 28
    iget-object v6, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 30
    iget-object v9, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 32
    iget-object v10, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedValue:Landroid/view/autofill/AutofillValue;

    .line 34
    iget-object v11, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    .line 36
    iget-object v12, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    .line 38
    iget-object v13, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$onErrorCallback:Ljava/lang/Runnable;

    .line 40
    iget-object v14, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$remoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 42
    iget v15, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$userId:I

    .line 44
    iget-object v2, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityComponent:Landroid/content/ComponentName;

    .line 46
    iget-object v1, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityToken:Landroid/os/IBinder;

    .line 48
    move-object/from16 v7, p1

    .line 50
    move-object/from16 v8, p2

    .line 52
    move-object/from16 v16, v2

    .line 54
    move-object/from16 v17, v1

    .line 56
    invoke-static/range {v4 .. v17}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$mmaybeRequestShowInlineSuggestions(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 59
    if-nez p3, :cond_0

    .line 61
    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 63
    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    .line 65
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw v0
.end method
