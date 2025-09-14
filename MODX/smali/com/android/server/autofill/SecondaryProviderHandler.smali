.class public final Lcom/android/server/autofill/SecondaryProviderHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;


# instance fields
.field public final mCallback:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

.field public mLastFlag:I

.field public final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/autofill/Session$$ExternalSyntheticLambda0;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v7, Lcom/android/server/autofill/RemoteFillService;

    .line 6
    move-object v0, v7

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p5

    .line 9
    move v3, p2

    .line 10
    move-object v4, p0

    .line 11
    move v5, p3

    .line 12
    move-object v6, p6

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V

    .line 16
    iput-object v7, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 18
    iput-object p4, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mCallback:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    const-string p1, "Creating a secondary provider handler with component name, "

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string p1, "SecondaryProviderHandler"

    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method


# virtual methods
.method public final onFillRequestFailure(ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V
    .locals 7

    .line 1
    const-string p1, "SecondaryProviderHandler"

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, "Received a fill response: "

    .line 7
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p3

    .line 17
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mCallback:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    .line 22
    iget p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mLastFlag:I

    .line 24
    iget-object p1, p1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/Session;

    .line 26
    const-string p3, "Call to Session#onSecondaryFillResponse() rejected - session: "

    .line 28
    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    goto/16 :goto_1

    .line 35
    :cond_0
    iget-object v0, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 40
    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    .line 43
    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 45
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 48
    move-result v2

    .line 49
    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 51
    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 53
    const/4 v4, 0x5

    .line 54
    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 60
    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 62
    iget v2, p1, Lcom/android/server/autofill/Session;->uid:I

    .line 64
    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 66
    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 68
    const/4 v4, 0x2

    .line 69
    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 72
    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 75
    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 77
    const/4 v2, 0x2

    .line 78
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 81
    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 89
    move-result-wide v3

    .line 90
    iput-wide v3, v1, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 95
    move-result-wide v3

    .line 96
    iget-wide v5, p1, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    .line 98
    sub-long/2addr v3, v5

    .line 99
    iget-object v1, p1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 101
    long-to-int v3, v3

    .line 102
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 104
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 106
    const/16 v5, 0xa

    .line 108
    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 111
    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 116
    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 118
    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 120
    const/4 v5, 0x7

    .line 121
    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 124
    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 127
    iget-boolean v1, p1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 129
    if-eqz v1, :cond_1

    .line 131
    const-string p0, "AutofillSession"

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget p3, p1, Lcom/android/server/autofill/Session;->id:I

    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string p3, " destroyed"

    .line 145
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p0, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 157
    const/4 p2, 0x5

    .line 158
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 161
    iget-object p0, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 163
    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 166
    monitor-exit v0

    .line 167
    goto :goto_1

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto :goto_2

    .line 170
    :cond_1
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 173
    move-result-object p3

    .line 174
    const/4 v1, 0x0

    .line 175
    if-nez p3, :cond_2

    .line 177
    move p3, v1

    .line 178
    goto :goto_0

    .line 179
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 182
    move-result p3

    .line 183
    :goto_0
    iget-object v3, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 185
    iget-object v3, v3, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 187
    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 189
    const/4 v5, 0x6

    .line 190
    invoke-direct {v4, p3, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 193
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 196
    iget-object v3, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 198
    iget-object v3, v3, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 200
    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 202
    const/4 v5, 0x1

    .line 203
    invoke-direct {v4, p3, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 206
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 209
    iget-object p3, p1, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    .line 211
    if-nez p3, :cond_3

    .line 213
    new-instance p3, Landroid/util/SparseArray;

    .line 215
    invoke-direct {p3, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 218
    iput-object p3, p1, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    .line 220
    :cond_3
    iget-object p3, p1, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    .line 222
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 225
    move-result v3

    .line 226
    invoke-virtual {p3, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    invoke-virtual {p1, p2, v2, v1, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    .line 232
    iget-object p2, p1, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 234
    iget-object p3, p1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 236
    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Lcom/android/server/autofill/ViewState;

    .line 242
    if-eqz p2, :cond_4

    .line 244
    invoke-virtual {p2, p0}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 247
    :cond_4
    iget-object p0, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 249
    iget-object p2, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 251
    new-instance p3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    .line 253
    const/4 v1, 0x1

    .line 254
    invoke-direct {p3, v1, p0}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 257
    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 260
    iget-object p0, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 265
    monitor-exit v0

    .line 266
    :goto_1
    return-void

    .line 267
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    throw p0
.end method

.method public final onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 8
    return-void
.end method
