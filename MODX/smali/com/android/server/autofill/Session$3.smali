.class public final Lcom/android/server/autofill/Session$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;

.field public val$focusedId:Ljava/lang/Object;

.field public val$response:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/Session$3;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/Session$3;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/service/autofill/FillResponse;

    .line 5
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 11
    check-cast v1, Landroid/service/autofill/FillResponse;

    .line 13
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 19
    check-cast v2, Landroid/service/autofill/FillResponse;

    .line 21
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x2

    .line 26
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 28
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 30
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/autofill/Session;->authenticate(ILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    .line 33
    return-void
.end method

.method public autofill(Landroid/service/autofill/Dataset;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/service/autofill/FillResponse;

    .line 5
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 14
    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/server/autofill/Session;->fill(IILandroid/service/autofill/Dataset;I)V

    .line 17
    return-void
.end method

.method public onError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 5
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 10
    check-cast v1, Lcom/android/server/autofill/Session;

    .line 12
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 14
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroid/view/autofill/AutofillId;

    .line 18
    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 20
    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 23
    iput-object v2, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 25
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public onInflate()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 5
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/Session;->onShown(II)V

    .line 10
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/Session$3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "DatasetComputationContainer["

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 20
    check-cast v1, Ljava/util/Set;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    const-string v1, ", autofillIds="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 31
    check-cast v1, Ljava/util/Set;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    .line 38
    check-cast v1, Ljava/util/Set;

    .line 40
    if-eqz v1, :cond_1

    .line 42
    const-string v1, ", mDatasets="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    .line 49
    check-cast v1, Ljava/util/Set;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 56
    check-cast v1, Ljava/util/Map;

    .line 58
    if-eqz v1, :cond_2

    .line 60
    const-string v1, ", mAutofillIdToDatasetMap="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 67
    check-cast p0, Ljava/util/Map;

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2
    const/16 p0, 0x5d

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
