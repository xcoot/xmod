.class public final Lcom/android/server/autofill/FillResponseEventLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I

.field public startResponseProcessingTimestamp:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    .line 8
    iput p1, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    .line 10
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 16
    return-void
.end method


# virtual methods
.method public final logAndEndEvent()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 5
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 8
    move-result v1

    .line 9
    const-string v2, "FillResponseEventLogger"

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v0, "Shouldn\'t be logging AutofillFillRequestReported again for same event"

    .line 15
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 21
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    .line 27
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 29
    if-eqz v3, :cond_1

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    const-string v4, "Log AutofillFillResponseReported: requestId="

    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, " sessionId="

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v4, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, " mAppPackageUid="

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v4, " mDisplayPresentationType=0 mAvailableCount="

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v4, " mSaveUiTriggerIds="

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v4, " mLatencyFillResponseReceivedMillis="

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v4, " mAuthenticationType=0 mAuthenticationResult=0 mAuthenticationFailureReason=-1 mLatencyAuthenticationUiDisplayMillis=-1 mLatencyDatasetDisplayMillis=-1 mResponseStatus="

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v4, " mLatencyResponseProcessingMillis="

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-wide v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    .line 110
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    const-string v4, " mAvailablePccCount="

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, " mAvailablePccOnlyCount="

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v4, " mTotalDatasetsProvided="

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v4, " mDetectionPref="

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    .line 150
    invoke-static {v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 153
    :cond_1
    iget v6, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    .line 155
    iget v8, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    .line 157
    iget v10, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 159
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    .line 161
    int-to-long v11, v2

    .line 162
    iget v13, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    .line 164
    const/4 v2, -0x1

    .line 165
    int-to-long v2, v2

    .line 166
    move-wide/from16 v16, v2

    .line 168
    move-wide/from16 v18, v2

    .line 170
    move-wide/from16 v20, v2

    .line 172
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    .line 174
    move/from16 v22, v2

    .line 176
    iget-wide v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    .line 178
    move-wide/from16 v23, v2

    .line 180
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 182
    move/from16 v25, v2

    .line 184
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 186
    move/from16 v26, v2

    .line 188
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 190
    move/from16 v27, v2

    .line 192
    iget v1, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    .line 194
    move/from16 v28, v1

    .line 196
    const/16 v5, 0x25d

    .line 198
    iget v7, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    .line 200
    const/4 v9, 0x0

    .line 201
    const/4 v14, 0x0

    .line 202
    const/4 v15, 0x0

    .line 203
    invoke-static/range {v5 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIJIIIJJJIJIIII)V

    .line 206
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 209
    move-result-object v1

    .line 210
    iput-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 212
    return-void
.end method

.method public final maybeSetResponseStatus(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 3
    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    return-void
.end method

.method public final startLogForNewResponse()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string v0, "FillResponseEventLogger"

    .line 11
    const-string v1, "FillResponseEventLogger is not empty before starting for a new request"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    .line 24
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    .line 26
    const/4 v2, 0x0

    .line 27
    iput v2, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 29
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    .line 31
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    .line 33
    iput v2, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    .line 35
    const-wide/16 v3, -0x1

    .line 37
    iput-wide v3, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    .line 39
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 41
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 43
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 45
    iput v2, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    .line 47
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 53
    return-void
.end method
