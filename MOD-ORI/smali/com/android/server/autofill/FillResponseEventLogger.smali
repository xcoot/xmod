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

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final logAndEndEvent()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "FillResponseEventLogger"

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
    iget-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

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
    const-string v4, "Log AutofillFillResponseReported: requestId="

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

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
    iget v4, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " mAppPackageUid="

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " mDisplayPresentationType=0 mAvailableCount="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, " mSaveUiTriggerIds="

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, " mLatencyFillResponseReceivedMillis="

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v4, " mAuthenticationType=0 mAuthenticationResult=0 mAuthenticationFailureReason=-1 mLatencyAuthenticationUiDisplayMillis=-1 mLatencyDatasetDisplayMillis=-1 mResponseStatus="

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, " mLatencyResponseProcessingMillis="

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-wide v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    .line 109
    .line 110
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v4, " mAvailablePccCount="

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, " mAvailablePccOnlyCount="

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, " mTotalDatasetsProvided="

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v4, " mDetectionPref="

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v4, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    .line 149
    .line 150
    invoke-static {v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    iget v6, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    .line 154
    .line 155
    iget v8, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    .line 156
    .line 157
    iget v10, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 158
    .line 159
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    .line 160
    .line 161
    int-to-long v11, v2

    .line 162
    iget v13, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    .line 163
    .line 164
    const/4 v2, -0x1

    .line 165
    int-to-long v2, v2

    .line 166
    move-wide/from16 v16, v2

    .line 167
    .line 168
    move-wide/from16 v18, v2

    .line 169
    .line 170
    move-wide/from16 v20, v2

    .line 171
    .line 172
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    .line 173
    .line 174
    move/from16 v22, v2

    .line 175
    .line 176
    iget-wide v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    .line 177
    .line 178
    move-wide/from16 v23, v2

    .line 179
    .line 180
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 181
    .line 182
    move/from16 v25, v2

    .line 183
    .line 184
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 185
    .line 186
    move/from16 v26, v2

    .line 187
    .line 188
    iget v2, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 189
    .line 190
    move/from16 v27, v2

    .line 191
    .line 192
    iget v1, v1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    .line 193
    .line 194
    move/from16 v28, v1

    .line 195
    .line 196
    const/16 v5, 0x25d

    .line 197
    .line 198
    iget v7, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mSessionId:I

    .line 199
    .line 200
    const/4 v9, 0x0

    .line 201
    const/4 v14, 0x0

    .line 202
    const/4 v15, 0x0

    .line 203
    invoke-static/range {v5 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIJIIIJJJIJIIII)V

    .line 204
    .line 205
    .line 206
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iput-object v1, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 211
    .line 212
    return-void
.end method

.method public final maybeSetResponseStatus(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final startLogForNewResponse()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

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
    const-string v0, "FillResponseEventLogger"

    .line 10
    .line 11
    const-string v1, "FillResponseEventLogger is not empty before starting for a new request"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    .line 23
    .line 24
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput v2, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 28
    .line 29
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    .line 30
    .line 31
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    .line 32
    .line 33
    iput v2, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    .line 34
    .line 35
    const-wide/16 v3, -0x1

    .line 36
    .line 37
    iput-wide v3, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    .line 38
    .line 39
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 40
    .line 41
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 42
    .line 43
    iput v1, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 44
    .line 45
    iput v2, v0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    .line 46
    .line 47
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 52
    .line 53
    return-void
.end method
