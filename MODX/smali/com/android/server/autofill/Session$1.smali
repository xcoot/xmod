.class public final Lcom/android/server/autofill/Session$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.service.autofill.action.DELAYED_FILL"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    const-string p0, "AutofillSession"

    .line 15
    const-string p1, "Unexpected action is received."

    .line 17
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 21
    :cond_0
    const-string p1, "android.service.autofill.extra.REQUEST_ID"

    .line 23
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 29
    const-string p0, "AutofillSession"

    .line 31
    const-string p1, "Delay fill action is missing request id extra."

    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 37
    :cond_1
    const-string p1, "AutofillSession"

    .line 39
    const-string/jumbo v0, "mDelayedFillBroadcastReceiver delayed fill action received"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 47
    iget-object p1, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 49
    monitor-enter p1

    .line 50
    :try_start_0
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 56
    move-result v0

    .line 57
    const-string v1, "android.service.autofill.extra.FILL_RESPONSE"

    .line 59
    const-class v2, Landroid/service/autofill/FillResponse;

    .line 61
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroid/service/autofill/FillResponse;

    .line 67
    iget-object v1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 69
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 71
    const/4 v2, 0x2

    .line 72
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    .line 75
    iget-object p0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 77
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 79
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    .line 81
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    .line 86
    move-result v1

    .line 87
    if-ne v0, v1, :cond_2

    .line 89
    const-string v1, "AutofillSession"

    .line 91
    const-string/jumbo v2, "processDelayedFillLocked: calling onFillRequestSuccess with new response"

    .line 94
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 99
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 101
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 104
    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    .line 106
    invoke-virtual {p0}, Landroid/service/autofill/FillRequest;->getFlags()I

    .line 109
    move-result p0

    .line 110
    invoke-virtual {v1, v0, p2, p0}, Lcom/android/server/autofill/Session;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V

    .line 113
    :cond_2
    monitor-exit p1

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0
.end method
