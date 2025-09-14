.class public final Lcom/android/server/autofill/SaveEventLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I

.field public final mSessionStartTimestamp:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    .line 13
    .line 14
    iput v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    .line 15
    .line 16
    const-wide/16 v1, -0x1

    .line 17
    .line 18
    iput-wide v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    .line 22
    .line 23
    iput v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    .line 24
    .line 25
    iput v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    .line 26
    .line 27
    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    .line 28
    .line 29
    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    .line 30
    .line 31
    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    .line 32
    .line 33
    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    .line 34
    .line 35
    const-wide/high16 v2, -0x8000000000000000L

    .line 36
    .line 37
    iput-wide v2, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    .line 38
    .line 39
    iput-wide v2, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    .line 40
    .line 41
    iput-wide v2, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    .line 42
    .line 43
    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    .line 44
    .line 45
    iput v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    .line 46
    .line 47
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 52
    .line 53
    iput-wide p2, p0, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final logAndEndEvent()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "SaveEventLogger"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, "Shouldn\'t be logging AutofillSaveEventReported again for same event"

    .line 14
    .line 15
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

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
    const-string v4, "Log AutofillSaveEventReported: requestId="

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mRequestId:I

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
    iget v4, v0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

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
    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " mSaveUiTriggerIds="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, " mFlag="

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    .line 79
    .line 80
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, " mIsNewField="

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v4, " mSaveUiShownReason="

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, " mSaveUiNotShownReason="

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v4, " mSaveButtonClicked="

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, " mCancelButtonClicked="

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, " mDialogDismissed="

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v4, " mIsSaved="

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v4, " mLatencySaveUiDisplayMillis="

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    .line 159
    .line 160
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v4, " mLatencySaveRequestMillis="

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    .line 169
    .line 170
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v4, " mLatencySaveFinishMillis="

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    .line 179
    .line 180
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v4, " mIsFrameworkCreatedSaveInfo="

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v4, " mServiceUid="

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    .line 199
    .line 200
    invoke-static {v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_1
    iget v6, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mRequestId:I

    .line 204
    .line 205
    iget v8, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    .line 206
    .line 207
    iget v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    .line 208
    .line 209
    int-to-long v9, v2

    .line 210
    iget-wide v11, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    .line 211
    .line 212
    iget-boolean v13, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    .line 213
    .line 214
    iget v14, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    .line 215
    .line 216
    iget v15, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    .line 217
    .line 218
    iget-boolean v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    .line 219
    .line 220
    move/from16 v16, v2

    .line 221
    .line 222
    iget-boolean v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    .line 223
    .line 224
    move/from16 v17, v2

    .line 225
    .line 226
    iget-boolean v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    .line 227
    .line 228
    move/from16 v18, v2

    .line 229
    .line 230
    iget-boolean v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    .line 231
    .line 232
    move/from16 v19, v2

    .line 233
    .line 234
    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    .line 235
    .line 236
    move-wide/from16 v20, v2

    .line 237
    .line 238
    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    .line 239
    .line 240
    move-wide/from16 v22, v2

    .line 241
    .line 242
    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    .line 243
    .line 244
    move-wide/from16 v24, v2

    .line 245
    .line 246
    iget-boolean v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    .line 247
    .line 248
    move/from16 v26, v2

    .line 249
    .line 250
    iget v1, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    .line 251
    .line 252
    move/from16 v27, v1

    .line 253
    .line 254
    const/16 v5, 0x25e

    .line 255
    .line 256
    iget v7, v0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

    .line 257
    .line 258
    invoke-static/range {v5 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJJZIIZZZZJJJZI)V

    .line 259
    .line 260
    .line 261
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iput-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 266
    .line 267
    return-void
.end method

.method public final maybeSetSaveUiNotShownReason(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
