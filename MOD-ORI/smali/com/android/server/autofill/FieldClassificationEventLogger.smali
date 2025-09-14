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

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "FieldClassificationEventLogger"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Shouldn\'t be logging AutofillFieldClassificationEventInternal again for same event"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    .line 24
    .line 25
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Log AutofillFieldClassificationEventReported: mLatencyClassificationRequestMillis="

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-wide v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " mCountClassifications="

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " mSessionId="

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, " mRequestId="

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " mNextFillRequestId="

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, " mAppPackageUid="

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, " mStatus="

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v3, " mIsSessionGc="

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-boolean v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    .line 107
    .line 108
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-wide v5, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    .line 112
    .line 113
    iget v7, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    .line 114
    .line 115
    iget v8, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    .line 116
    .line 117
    iget v9, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    .line 118
    .line 119
    iget v10, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    .line 120
    .line 121
    iget v11, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    .line 122
    .line 123
    iget v12, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    .line 124
    .line 125
    iget-boolean v13, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    .line 126
    .line 127
    const/16 v4, 0x293

    .line 128
    .line 129
    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIIIIZ)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 137
    .line 138
    return-void
.end method

.method public final startNewLogForRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "FieldClassificationEventLogger"

    .line 10
    .line 11
    const-string v1, "FieldClassificationEventLogger is not empty before starting for a new request"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const-wide/16 v1, -0x1

    .line 22
    .line 23
    iput-wide v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    .line 27
    .line 28
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    .line 29
    .line 30
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    .line 31
    .line 32
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    .line 33
    .line 34
    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 41
    .line 42
    return-void
.end method
