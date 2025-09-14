.class public final Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastFillRequest:Landroid/service/autofill/FillRequest;

.field public mPendingFillRequest:Landroid/service/autofill/FillRequest;

.field public mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public mWaitForInlineRequest:Z

.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 3
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final maybeRequestFillLocked()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 8
    sget-object v1, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    move-result v1

    .line 14
    iput v1, v0, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    .line 16
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 18
    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 22
    if-nez v0, :cond_1

    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Landroid/service/autofill/FillRequest;

    .line 27
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 29
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    .line 32
    move-result v2

    .line 33
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 35
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFillContexts()Ljava/util/List;

    .line 38
    move-result-object v3

    .line 39
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 41
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getHints()Ljava/util/List;

    .line 44
    move-result-object v4

    .line 45
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 47
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    .line 50
    move-result-object v5

    .line 51
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 53
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFlags()I

    .line 56
    move-result v6

    .line 57
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 59
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 61
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getDelayedFillIntentSender()Landroid/content/IntentSender;

    .line 64
    move-result-object v8

    .line 65
    move-object v1, v0

    .line 66
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    .line 69
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 73
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mLastFillRequest:Landroid/service/autofill/FillRequest;

    .line 75
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 77
    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getFlags()I

    .line 80
    move-result v0

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 89
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    .line 91
    if-eqz v0, :cond_5

    .line 93
    const-string v0, "AutofillSession"

    .line 95
    const-string v1, "Requesting fill response to secondary provider."

    .line 97
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 102
    iget-boolean v2, v0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    .line 104
    if-nez v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 108
    iget-object v3, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 110
    iget v4, v0, Lcom/android/server/autofill/Session;->id:I

    .line 112
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/autofill/Session;->-$$Nest$maddCredentialManagerDataToClientState(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;

    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 120
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    .line 122
    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 124
    invoke-virtual {v2}, Landroid/service/autofill/FillRequest;->getFlags()I

    .line 127
    move-result v3

    .line 128
    iget-object v4, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 130
    iget-object v4, v4, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 132
    invoke-interface {v4}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    const-string v5, "SecondaryProviderHandler"

    .line 141
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput v3, v0, Lcom/android/server/autofill/SecondaryProviderHandler;->mLastFlag:I

    .line 146
    iget-object v1, v0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 148
    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService;->isCredentialAutofillService()Z

    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_4

    .line 156
    const-string v1, "About to call CredAutofill service as secondary provider"

    .line 158
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, v0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 163
    invoke-virtual {v0, v2, v4}, Lcom/android/server/autofill/RemoteFillService;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/IBinder;)V

    .line 166
    goto :goto_0

    .line 167
    :cond_4
    iget-object v0, v0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 169
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 172
    goto :goto_0

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 175
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 177
    if-eqz v1, :cond_7

    .line 179
    iget-boolean v2, v0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    .line 181
    if-eqz v2, :cond_6

    .line 183
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 185
    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 187
    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 189
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/autofill/Session;->-$$Nest$maddCredentialManagerDataToClientState(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;

    .line 192
    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 195
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 197
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 199
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 201
    invoke-interface {v1}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v2, v0, v1}, Lcom/android/server/autofill/RemoteFillService;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/IBinder;)V

    .line 208
    goto :goto_0

    .line 209
    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 211
    invoke-virtual {v1, v0}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 214
    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 217
    const/4 v1, 0x0

    .line 218
    iput-boolean v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 220
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 225
    move-result-wide v0

    .line 226
    iget-object v2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 228
    iget-wide v3, v2, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    .line 230
    sub-long/2addr v0, v3

    .line 231
    iget-object v2, v2, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 233
    long-to-int v0, v0

    .line 234
    iget-object v1, v2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 236
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 238
    const/16 v3, 0x8

    .line 240
    invoke-direct {v2, v0, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 243
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 248
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 250
    iget-object v1, v1, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 252
    new-instance v2, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 254
    const/4 v3, 0x5

    .line 255
    invoke-direct {v2, v0, v3}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 258
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 261
    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 263
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 265
    invoke-virtual {p0}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    .line 268
    return-void
.end method

.method public final onHandleAssistData(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 8
    const-string/jumbo p0, "onHandleAssistData() called without a remote service. mForAugmentedAutofillOnly: %s"

    .line 11
    iget-object p1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 13
    iget-boolean p1, p1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, v2, p0, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 29
    if-nez v0, :cond_1

    .line 31
    const-string p0, "AutofillSession"

    .line 33
    const-string p1, "No current view id - session might have finished"

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 39
    :cond_1
    const-string/jumbo v1, "structure"

    .line 42
    const-class v3, Landroid/app/assist/AssistStructure;

    .line 44
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/app/assist/AssistStructure;

    .line 50
    if-nez v1, :cond_2

    .line 52
    const-string p0, "AutofillSession"

    .line 54
    const-string p1, "No assist structure - app might have crashed providing it"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 60
    :cond_2
    const-string/jumbo v3, "receiverExtras"

    .line 63
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_3

    .line 69
    const-string p0, "AutofillSession"

    .line 71
    const-string p1, "No receiver extras - app might have crashed providing it"

    .line 73
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 77
    :cond_3
    const-string v4, "android.service.autofill.extra.REQUEST_ID"

    .line 79
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 82
    move-result v6

    .line 83
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 85
    if-eqz v3, :cond_4

    .line 87
    const-string v3, "AutofillSession"

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    const-string v5, "New structure for requestId "

    .line 93
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v5, ": "

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 111
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_4
    iget-object v3, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 116
    iget-object v3, v3, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 118
    monitor-enter v3

    .line 119
    :try_start_0
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v4, 0x0

    .line 123
    :try_start_1
    invoke-static {v1, v4}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    .line 126
    move-result-object v5

    .line 127
    move v7, v4

    .line 128
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 131
    move-result v8

    .line 132
    if-ge v7, v8, :cond_5

    .line 134
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 140
    iget-object v9, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 142
    iget v9, v9, Lcom/android/server/autofill/Session;->id:I

    .line 144
    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception p0

    .line 151
    goto/16 :goto_7

    .line 153
    :cond_5
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure;->getFlags()I

    .line 156
    move-result v5

    .line 157
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 159
    iget-boolean v8, v7, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 161
    if-eqz v8, :cond_9

    .line 163
    iget-object v8, v7, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 165
    iget-object v7, v7, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 167
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {v8, v7}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;

    .line 174
    move-result-object v7

    .line 175
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 177
    if-eqz v8, :cond_6

    .line 179
    const-string v8, "AutofillSession"

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string/jumbo v10, "url_bars in compat mode: "

    .line 189
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    move-result-object v10

    .line 196
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v9

    .line 203
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_6
    if-eqz v7, :cond_8

    .line 208
    iget-object v8, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 210
    invoke-static {v1, v7}, Lcom/android/server/autofill/Helper;->sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 213
    move-result-object v7

    .line 214
    iput-object v7, v8, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 216
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 218
    iget-object v7, v7, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 220
    if-eqz v7, :cond_8

    .line 222
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 225
    move-result-object v7

    .line 226
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 228
    if-eqz v8, :cond_7

    .line 230
    const-string v8, "AutofillSession"

    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    const-string v10, "Setting urlBar as id="

    .line 239
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v10, " and domain "

    .line 247
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v10, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 252
    iget-object v10, v10, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 254
    invoke-virtual {v10}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    .line 257
    move-result-object v10

    .line 258
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object v9

    .line 265
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_7
    new-instance v8, Lcom/android/server/autofill/ViewState;

    .line 270
    iget-object v9, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 272
    iget-boolean v10, v9, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    .line 274
    const/16 v11, 0x200

    .line 276
    invoke-direct {v8, v7, v9, v11, v10}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V

    .line 279
    iget-object v9, v9, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 281
    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_8
    or-int/lit8 v5, v5, 0x2

    .line 286
    :cond_9
    move v10, v5

    .line 287
    const/4 v5, 0x1

    .line 288
    invoke-virtual {v1, v5}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 291
    iget-object v7, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 293
    iget-object v8, v7, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 295
    if-nez v8, :cond_a

    .line 297
    new-instance v8, Ljava/util/ArrayList;

    .line 299
    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 302
    iput-object v8, v7, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 304
    :cond_a
    iget-object v5, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 306
    iget-object v5, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 308
    new-instance v7, Landroid/service/autofill/FillContext;

    .line 310
    invoke-direct {v7, v6, v1, v0}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V

    .line 313
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 318
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 321
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 323
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 328
    move-result v0

    .line 329
    move v1, v4

    .line 330
    :goto_1
    if-ge v1, v0, :cond_b

    .line 332
    iget-object v5, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 334
    iget-object v7, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    move-result-object v7

    .line 340
    check-cast v7, Landroid/service/autofill/FillContext;

    .line 342
    invoke-static {v5, v7, v10}, Lcom/android/server/autofill/Session;->-$$Nest$mfillContextWithAllowedValuesLocked(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    .line 347
    goto :goto_1

    .line 348
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 350
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    .line 353
    move-result-object v7

    .line 354
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 356
    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$mgetTypeHintsForProvider(Lcom/android/server/autofill/Session;)Ljava/util/List;

    .line 359
    move-result-object v8

    .line 360
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 362
    invoke-static {v0, v6}, Lcom/android/server/autofill/Session;->-$$Nest$mcreatePendingIntent(Lcom/android/server/autofill/Session;I)Landroid/app/PendingIntent;

    .line 365
    move-result-object v1

    .line 366
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    .line 368
    new-instance v0, Landroid/service/autofill/FillRequest;

    .line 370
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 372
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 374
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    .line 376
    if-nez v1, :cond_c

    .line 378
    :goto_2
    move-object v12, v2

    .line 379
    goto :goto_3

    .line 380
    :cond_c
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 383
    move-result-object v2

    .line 384
    goto :goto_2

    .line 385
    :goto_3
    const/4 v11, 0x0

    .line 386
    move-object v5, v0

    .line 387
    invoke-direct/range {v5 .. v12}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    .line 390
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 392
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    .line 395
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 398
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 400
    if-eqz v0, :cond_10

    .line 402
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 404
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 406
    if-eqz v1, :cond_10

    .line 408
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 410
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 412
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 414
    monitor-enter v2

    .line 415
    :try_start_2
    iget-object v3, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 417
    invoke-virtual {v3, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledLocked(I)Z

    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_e

    .line 423
    iget-object p0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 425
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 427
    if-eqz p0, :cond_d

    .line 429
    const-string p0, "ContentCaptureManagerService"

    .line 431
    const-string/jumbo p1, "sendActivityAssistData() disabled!"

    .line 434
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    goto :goto_4

    .line 438
    :catchall_1
    move-exception p0

    .line 439
    goto :goto_5

    .line 440
    :cond_d
    :goto_4
    monitor-exit v2

    .line 441
    goto :goto_6

    .line 442
    :cond_e
    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 444
    invoke-virtual {v1, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 447
    move-result-object p0

    .line 448
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 450
    if-eqz p0, :cond_f

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 455
    monitor-exit v2

    .line 456
    goto :goto_6

    .line 457
    :cond_f
    monitor-exit v2

    .line 458
    goto :goto_6

    .line 459
    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 460
    throw p0

    .line 461
    :cond_10
    :goto_6
    return-void

    .line 462
    :catch_0
    move-exception p1

    .line 463
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 465
    const-string v0, "Exception lazy loading assist structure for %s: %s"

    .line 467
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    .line 470
    move-result-object v1

    .line 471
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    monitor-exit v3

    .line 479
    return-void

    .line 480
    :goto_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    throw p0
.end method

.method public final onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method
