.class public final Lcom/android/server/autofill/FieldClassificationEventLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEventInternal:Ljava/util/Optional;


# virtual methods
.method public final logAndEndEvent()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "FieldClassificationEventLogger"

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string p0, "Shouldn\'t be logging AutofillFieldClassificationEventInternal again for same event"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 19
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    .line 25
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 27
    if-eqz v2, :cond_1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    const-string v3, "Log AutofillFieldClassificationEventReported: mLatencyClassificationRequestMillis="

    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-wide v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    .line 38
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, " mCountClassifications="

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, " mSessionId="

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v3, " mRequestId="

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v3, " mNextFillRequestId="

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, " mAppPackageUid="

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v3, " mStatus="

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v3, " mIsSessionGc="

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    .line 108
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 111
    :cond_1
    iget-wide v5, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    .line 113
    iget v7, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    .line 115
    iget v8, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    .line 117
    iget v9, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    .line 119
    iget v10, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    .line 121
    iget v11, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    .line 123
    iget v12, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    .line 125
    iget-boolean v13, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    .line 127
    const/16 v4, 0x293

    .line 129
    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIIIIZ)V

    .line 132
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 138
    return-void
.end method

.method public final startNewLogForRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string v0, "FieldClassificationEventLogger"

    .line 11
    const-string v1, "FieldClassificationEventLogger is not empty before starting for a new request"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v1, -0x1

    .line 23
    iput-wide v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    .line 28
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    .line 30
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    .line 32
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    .line 34
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    .line 36
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 42
    return-void
.end method
