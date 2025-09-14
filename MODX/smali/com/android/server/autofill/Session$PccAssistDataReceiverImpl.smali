.class public final Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 3
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final maybeRequestFieldClassificationFromServiceLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 5
    iget-object v1, v1, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string p0, "AutofillSession"

    .line 11
    const-string v0, "Received AssistData without pending classification request"

    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteFieldClassificationServiceLocked()Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 25
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 27
    iget-object v1, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 29
    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    iget-object v1, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 34
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 36
    iget-object v3, v1, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v5

    .line 42
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 44
    if-eqz v1, :cond_1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v2, "onFieldClassificationRequest request:"

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    const-string v2, "AutofillRemoteFieldClassificationService"

    .line 63
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    new-instance v7, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;

    .line 68
    move-object v1, v7

    .line 69
    move-object v2, v0

    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;J)V

    .line 73
    invoke-virtual {v0, v7}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 76
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 78
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 80
    const/4 v0, 0x3

    .line 81
    iput v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 83
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 86
    return-void
.end method

.method public final onHandleAssistData(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "structure"

    .line 4
    const-class v1, Landroid/app/assist/AssistStructure;

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/assist/AssistStructure;

    .line 12
    if-nez v0, :cond_0

    .line 14
    const-string p0, "AutofillSession"

    .line 16
    const-string p1, "No assist structure for pcc detection - app might have crashed providing it"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    :cond_0
    const-string/jumbo v1, "receiverExtras"

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_1

    .line 31
    const-string p0, "AutofillSession"

    .line 33
    const-string p1, "No receiver extras for pcc detection - app might have crashed providing it"

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 39
    :cond_1
    const-string v1, "android.service.autofill.extra.REQUEST_ID"

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 44
    move-result p1

    .line 45
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 47
    if-eqz v1, :cond_2

    .line 49
    const-string v1, "AutofillSession"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "New structure for PCC Detection: requestId "

    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string p1, ": "

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 78
    iget-object p1, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 80
    monitor-enter p1

    .line 81
    :try_start_0
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/4 v1, 0x0

    .line 85
    :try_start_1
    invoke-static {v0, v1}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    .line 88
    move-result-object v2

    .line 89
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 92
    move-result v3

    .line 93
    if-ge v1, v3, :cond_3

    .line 95
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 101
    iget-object v4, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 103
    iget v4, v4, Lcom/android/server/autofill/Session;->id:I

    .line 105
    invoke-virtual {v3, v4}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 115
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 117
    const/4 v2, 0x3

    .line 118
    iput v2, v1, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 120
    new-instance v2, Landroid/service/assist/classification/FieldClassificationRequest;

    .line 122
    invoke-direct {v2, v0}, Landroid/service/assist/classification/FieldClassificationRequest;-><init>(Landroid/app/assist/AssistStructure;)V

    .line 125
    iput-object v2, v1, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 127
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->maybeRequestFieldClassificationFromServiceLocked()V

    .line 130
    monitor-exit p1

    .line 131
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    iget-object p0, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 135
    const-string v2, "Exception lazy loading assist structure for %s: %s"

    .line 137
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    .line 140
    move-result-object v0

    .line 141
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    monitor-exit p1

    .line 149
    return-void

    .line 150
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw p0
.end method

.method public final onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method
