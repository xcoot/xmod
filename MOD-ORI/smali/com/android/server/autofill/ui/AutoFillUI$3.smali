.class public final Lcom/android/server/autofill/ui/AutoFillUI$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$log:Landroid/metrics/LogMaker;

.field public final synthetic val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public final synthetic val$response:Landroid/service/autofill/FillResponse;

.field public final synthetic val$sessionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/view/autofill/AutofillId;Landroid/metrics/LogMaker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final log(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onCanceled()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    invoke-direct {v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 34
    .line 35
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 41
    .line 42
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->requestFallbackFromFillDialog()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method

.method public final onResponsePicked(Landroid/service/autofill/FillResponse;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/autofill/Session;->authenticate(ILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
