.class public final Lcom/android/server/autofill/FillRequestEventLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    .line 5
    .line 6
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final logAndEndEvent()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "FillRequestEventLogger"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, "Shouldn\'t be logging AutofillFillRequestReported again for same event"

    .line 14
    .line 15
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;

    .line 26
    .line 27
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "Log AutofillFillRequestReported: requestId="

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestId:I

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, " sessionId="

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v4, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " mAutofillServiceUid="

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " mInlineSuggestionHostUid="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, " mIsAugmented="

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, " mIsClientSuggestionFallback=false mIsFillDialogEligible="

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v4, " mRequestTriggerReason="

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, " mFlags="

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v4, " mLatencyFillRequestSentMillis="

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, " mAppPackageUid="

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    .line 129
    .line 130
    invoke-static {v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_1
    iget v6, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestId:I

    .line 134
    .line 135
    iget v8, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    .line 136
    .line 137
    iget v9, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    .line 138
    .line 139
    iget-boolean v10, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    .line 140
    .line 141
    iget-boolean v12, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    .line 142
    .line 143
    iget v13, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    .line 144
    .line 145
    iget v2, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    .line 146
    .line 147
    int-to-long v14, v2

    .line 148
    iget v2, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    .line 149
    .line 150
    iget v1, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    .line 151
    .line 152
    const/16 v5, 0x25c

    .line 153
    .line 154
    iget v7, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    .line 155
    .line 156
    const/4 v11, 0x0

    .line 157
    move/from16 v16, v2

    .line 158
    .line 159
    move/from16 v17, v1

    .line 160
    .line 161
    invoke-static/range {v5 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZZZIJII)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 169
    .line 170
    return-void
.end method

.method public final maybeSetRequestTriggerReason(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final startLogForNewRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

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
    const-string v0, "FillRequestEventLogger"

    .line 10
    .line 11
    const-string v1, "FillRequestEventLogger is not empty before starting for a new request"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    .line 23
    .line 24
    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    .line 25
    .line 26
    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-boolean v2, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    .line 30
    .line 31
    iput-boolean v2, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    .line 32
    .line 33
    iput v2, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    .line 34
    .line 35
    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    .line 36
    .line 37
    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 44
    .line 45
    return-void
.end method
