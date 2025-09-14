.class public final Lcom/android/server/autofill/PresentationStatsEventLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallingAppUid:I

.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I

.field public final mSessionStartTimestamp:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final logAndEndEvent()V
    .locals 54

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "PresentationStatsEventLogger"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, "Shouldn\'t be logging AutofillPresentationEventReported again for same event"

    .line 14
    .line 15
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

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
    const-string v4, "Log AutofillPresentationEventReported: requestId="

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

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
    iget v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " mNoPresentationEventReason="

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " mAvailableCount="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, " mCountShown="

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, " mCountFilteredUserTyping=0 mCountNotShownImePresentationNotDrawn=0 mCountNotShownImeUserNotSeen=0 mDisplayPresentationType="

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v4, " mAutofillServiceUid="

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, " mInlineSuggestionHostUid="

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v4, " mIsRequestTriggered="

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, " mFillRequestSentTimestampMs="

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, " mFillResponseReceivedTimestampMs="

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v4, " mSuggestionSentTimestampMs="

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v4, " mSuggestionPresentedTimestampMs="

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v4, " mSelectedDatasetId="

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v4, " mDialogDismissed="

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v4, " mNegativeCtaButtonClicked="

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v4, " mPositiveCtaButtonClicked="

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v4, " mAuthenticationType="

    .line 204
    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 209
    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v4, " mAuthenticationResult="

    .line 214
    .line 215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v4, " mLatencyAuthenticationUiDisplayMillis=-1 mLatencyDatasetDisplayMillis=-1 mAvailablePccCount="

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 229
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v4, " mAvailablePccOnlyCount="

    .line 234
    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 239
    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v4, " mSelectedDatasetPickedReason="

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 249
    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v4, " mDetectionPreference="

    .line 254
    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 259
    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v4, " mFieldClassificationRequestId="

    .line 264
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 269
    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v4, " mAppPackageUid="

    .line 274
    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    .line 279
    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v4, " mIsCredentialRequest="

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    .line 289
    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v4, " mWebviewRequestedCredential="

    .line 294
    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    .line 299
    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v4, " mViewFillableTotalCount="

    .line 304
    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 309
    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v4, " mViewFillFailureCount="

    .line 314
    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 319
    .line 320
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v4, " mFocusedId="

    .line 324
    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 329
    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v4, " mViewFillSuccessCount="

    .line 334
    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 339
    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v4, " mViewFilledButUnexpectedCount="

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 349
    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v4, " event.mSelectionTimestamp="

    .line 354
    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 359
    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v4, " event.mAutofilledTimestampMs="

    .line 364
    .line 365
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 369
    .line 370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v4, " event.mFieldModifiedFirstTimestampMs="

    .line 374
    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 379
    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v4, " event.mFieldModifiedLastTimestampMs="

    .line 384
    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 389
    .line 390
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v4, " event.mSuggestionPresentedLastTimestampMs="

    .line 394
    .line 395
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 399
    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v4, " event.mFocusedVirtualAutofillId="

    .line 404
    .line 405
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 409
    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v4, " event.mFieldFirstLength="

    .line 414
    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 419
    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v4, " event.mFieldLastLength="

    .line 424
    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 429
    .line 430
    invoke-static {v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    .line 434
    .line 435
    if-nez v2, :cond_2

    .line 436
    .line 437
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    iput-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 442
    .line 443
    return-void

    .line 444
    :cond_2
    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    .line 445
    .line 446
    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 447
    .line 448
    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    .line 449
    .line 450
    iget v7, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 451
    .line 452
    iget v11, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 453
    .line 454
    iget v12, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 455
    .line 456
    iget v13, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 457
    .line 458
    iget-boolean v14, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    .line 459
    .line 460
    iget v15, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 461
    .line 462
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 463
    .line 464
    move/from16 v16, v2

    .line 465
    .line 466
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 467
    .line 468
    move/from16 v17, v2

    .line 469
    .line 470
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 471
    .line 472
    move/from16 v18, v2

    .line 473
    .line 474
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 475
    .line 476
    move/from16 v19, v2

    .line 477
    .line 478
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 479
    .line 480
    move/from16 v20, v2

    .line 481
    .line 482
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 483
    .line 484
    move/from16 v21, v2

    .line 485
    .line 486
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 487
    .line 488
    move/from16 v22, v2

    .line 489
    .line 490
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 491
    .line 492
    move/from16 v23, v2

    .line 493
    .line 494
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 495
    .line 496
    move/from16 v24, v2

    .line 497
    .line 498
    const/4 v2, -0x1

    .line 499
    int-to-long v8, v2

    .line 500
    move-wide/from16 v25, v8

    .line 501
    .line 502
    move-wide/from16 v27, v8

    .line 503
    .line 504
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 505
    .line 506
    move/from16 v29, v2

    .line 507
    .line 508
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 509
    .line 510
    move/from16 v30, v2

    .line 511
    .line 512
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 513
    .line 514
    move/from16 v31, v2

    .line 515
    .line 516
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 517
    .line 518
    move/from16 v32, v2

    .line 519
    .line 520
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 521
    .line 522
    move/from16 v33, v2

    .line 523
    .line 524
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    .line 525
    .line 526
    move/from16 v35, v2

    .line 527
    .line 528
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    .line 529
    .line 530
    move/from16 v36, v2

    .line 531
    .line 532
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 533
    .line 534
    int-to-long v8, v2

    .line 535
    move-wide/from16 v37, v8

    .line 536
    .line 537
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 538
    .line 539
    int-to-long v8, v2

    .line 540
    move-wide/from16 v39, v8

    .line 541
    .line 542
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 543
    .line 544
    move/from16 v41, v2

    .line 545
    .line 546
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 547
    .line 548
    int-to-long v8, v2

    .line 549
    move-wide/from16 v42, v8

    .line 550
    .line 551
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 552
    .line 553
    int-to-long v8, v2

    .line 554
    move-wide/from16 v44, v8

    .line 555
    .line 556
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 557
    .line 558
    move/from16 v46, v2

    .line 559
    .line 560
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 561
    .line 562
    move/from16 v47, v2

    .line 563
    .line 564
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 565
    .line 566
    move/from16 v48, v2

    .line 567
    .line 568
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 569
    .line 570
    move/from16 v49, v2

    .line 571
    .line 572
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 573
    .line 574
    move/from16 v50, v2

    .line 575
    .line 576
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 577
    .line 578
    move/from16 v51, v2

    .line 579
    .line 580
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 581
    .line 582
    move/from16 v52, v2

    .line 583
    .line 584
    iget v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 585
    .line 586
    move/from16 v53, v1

    .line 587
    .line 588
    const/16 v2, 0x1d5

    .line 589
    .line 590
    iget v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 591
    .line 592
    const/4 v8, 0x0

    .line 593
    const/4 v9, 0x0

    .line 594
    const/4 v10, 0x0

    .line 595
    iget v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    .line 596
    .line 597
    move/from16 v34, v1

    .line 598
    .line 599
    invoke-static/range {v2 .. v53}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIIIIZIIIIIZZZIIJJIIIIIIZZJJIJJIIIIIIII)V

    .line 600
    .line 601
    .line 602
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    iput-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 607
    .line 608
    return-void
.end method

.method public final maybeSetAuthenticationResult(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final maybeSetNoPresentationEventReason(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    const/16 v1, 0xe

    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final startNewEvent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "PresentationStatsEventLogger"

    .line 10
    .line 11
    const-string v0, "Failed to start new event because already have active event."

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 24
    .line 25
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 26
    .line 27
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 31
    .line 32
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 33
    .line 34
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 35
    .line 36
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 37
    .line 38
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 39
    .line 40
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 41
    .line 42
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 43
    .line 44
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 45
    .line 46
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 47
    .line 48
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 49
    .line 50
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 51
    .line 52
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 53
    .line 54
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 55
    .line 56
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 57
    .line 58
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 59
    .line 60
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 61
    .line 62
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 63
    .line 64
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    .line 65
    .line 66
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    .line 67
    .line 68
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 69
    .line 70
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 71
    .line 72
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 73
    .line 74
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 75
    .line 76
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 77
    .line 78
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 79
    .line 80
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 81
    .line 82
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 83
    .line 84
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 85
    .line 86
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 87
    .line 88
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 89
    .line 90
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 91
    .line 92
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 93
    .line 94
    new-instance v2, Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    .line 100
    .line 101
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    .line 102
    .line 103
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 108
    .line 109
    return-void
.end method
