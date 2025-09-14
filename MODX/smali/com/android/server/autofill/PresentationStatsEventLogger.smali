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

    .line 4
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 6
    iput p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    .line 8
    iput-wide p3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 10
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 16
    return-void
.end method


# virtual methods
.method public final logAndEndEvent()V
    .locals 54

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 5
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 8
    move-result v1

    .line 9
    const-string v2, "PresentationStatsEventLogger"

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v0, "Shouldn\'t be logging AutofillPresentationEventReported again for same event"

    .line 15
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 21
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 27
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 29
    if-eqz v3, :cond_1

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    const-string v4, "Log AutofillPresentationEventReported: requestId="

    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, " sessionId="

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, " mNoPresentationEventReason="

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v4, " mAvailableCount="

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v4, " mCountShown="

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v4, " mCountFilteredUserTyping=0 mCountNotShownImePresentationNotDrawn=0 mCountNotShownImeUserNotSeen=0 mDisplayPresentationType="

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v4, " mAutofillServiceUid="

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v4, " mInlineSuggestionHostUid="

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v4, " mIsRequestTriggered="

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, " mFillRequestSentTimestampMs="

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v4, " mFillResponseReceivedTimestampMs="

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v4, " mSuggestionSentTimestampMs="

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v4, " mSuggestionPresentedTimestampMs="

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v4, " mSelectedDatasetId="

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v4, " mDialogDismissed="

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    const-string v4, " mNegativeCtaButtonClicked="

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    const-string v4, " mPositiveCtaButtonClicked="

    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    const-string v4, " mAuthenticationType="

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v4, " mAuthenticationResult="

    .line 215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v4, " mLatencyAuthenticationUiDisplayMillis=-1 mLatencyDatasetDisplayMillis=-1 mAvailablePccCount="

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v4, " mAvailablePccOnlyCount="

    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string v4, " mSelectedDatasetPickedReason="

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    const-string v4, " mDetectionPreference="

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v4, " mFieldClassificationRequestId="

    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v4, " mAppPackageUid="

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v4, " mIsCredentialRequest="

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    const-string v4, " mWebviewRequestedCredential="

    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-boolean v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 303
    const-string v4, " mViewFillableTotalCount="

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    const-string v4, " mViewFillFailureCount="

    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 320
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const-string v4, " mFocusedId="

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    const-string v4, " mViewFillSuccessCount="

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    const-string v4, " mViewFilledButUnexpectedCount="

    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v4, " event.mSelectionTimestamp="

    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v4, " event.mAutofilledTimestampMs="

    .line 365
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    const-string v4, " event.mFieldModifiedFirstTimestampMs="

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    const-string v4, " event.mFieldModifiedLastTimestampMs="

    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 390
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const-string v4, " event.mSuggestionPresentedLastTimestampMs="

    .line 395
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    const-string v4, " event.mFocusedVirtualAutofillId="

    .line 405
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    const-string v4, " event.mFieldFirstLength="

    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    const-string v4, " event.mFieldLastLength="

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 430
    invoke-static {v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 433
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    .line 435
    if-nez v2, :cond_2

    .line 437
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 440
    move-result-object v1

    .line 441
    iput-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 443
    return-void

    .line 444
    :cond_2
    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    .line 446
    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 448
    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    .line 450
    iget v7, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 452
    iget v11, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 454
    iget v12, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 456
    iget v13, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 458
    iget-boolean v14, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    .line 460
    iget v15, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 462
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 464
    move/from16 v16, v2

    .line 466
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 468
    move/from16 v17, v2

    .line 470
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 472
    move/from16 v18, v2

    .line 474
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 476
    move/from16 v19, v2

    .line 478
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 480
    move/from16 v20, v2

    .line 482
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 484
    move/from16 v21, v2

    .line 486
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 488
    move/from16 v22, v2

    .line 490
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 492
    move/from16 v23, v2

    .line 494
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 496
    move/from16 v24, v2

    .line 498
    const/4 v2, -0x1

    .line 499
    int-to-long v8, v2

    .line 500
    move-wide/from16 v25, v8

    .line 502
    move-wide/from16 v27, v8

    .line 504
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 506
    move/from16 v29, v2

    .line 508
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 510
    move/from16 v30, v2

    .line 512
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 514
    move/from16 v31, v2

    .line 516
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 518
    move/from16 v32, v2

    .line 520
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 522
    move/from16 v33, v2

    .line 524
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    .line 526
    move/from16 v35, v2

    .line 528
    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    .line 530
    move/from16 v36, v2

    .line 532
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 534
    int-to-long v8, v2

    .line 535
    move-wide/from16 v37, v8

    .line 537
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 539
    int-to-long v8, v2

    .line 540
    move-wide/from16 v39, v8

    .line 542
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 544
    move/from16 v41, v2

    .line 546
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 548
    int-to-long v8, v2

    .line 549
    move-wide/from16 v42, v8

    .line 551
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 553
    int-to-long v8, v2

    .line 554
    move-wide/from16 v44, v8

    .line 556
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 558
    move/from16 v46, v2

    .line 560
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 562
    move/from16 v47, v2

    .line 564
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 566
    move/from16 v48, v2

    .line 568
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 570
    move/from16 v49, v2

    .line 572
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 574
    move/from16 v50, v2

    .line 576
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 578
    move/from16 v51, v2

    .line 580
    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 582
    move/from16 v52, v2

    .line 584
    iget v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 586
    move/from16 v53, v1

    .line 588
    const/16 v2, 0x1d5

    .line 590
    iget v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 592
    const/4 v8, 0x0

    .line 593
    const/4 v9, 0x0

    .line 594
    const/4 v10, 0x0

    .line 595
    iget v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    .line 597
    move/from16 v34, v1

    .line 599
    invoke-static/range {v2 .. v53}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIIIIZIIIIIZZZIIJJIIIIIIZZJJIJJIIIIIIII)V

    .line 602
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 605
    move-result-object v1

    .line 606
    iput-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 608
    return-void
.end method

.method public final maybeSetAuthenticationResult(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 3
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    return-void
.end method

.method public final maybeSetNoPresentationEventReason(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 3
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 5
    const/16 v1, 0xe

    .line 7
    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 13
    return-void
.end method

.method public final startNewEvent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string p0, "PresentationStatsEventLogger"

    .line 11
    const-string v0, "Failed to start new event because already have active event."

    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 25
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 27
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 29
    const/4 v2, -0x1

    .line 30
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 32
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 34
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 36
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 38
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 40
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 42
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 44
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 46
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 48
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 50
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 52
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 54
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 56
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 58
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 60
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 62
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 64
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    .line 66
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    .line 68
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 70
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 72
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 74
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 76
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 78
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 80
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 82
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 84
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 86
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 88
    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 90
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 92
    iput v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 94
    new-instance v2, Landroid/util/ArraySet;

    .line 96
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 99
    iput-object v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    .line 101
    iput-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    .line 103
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 109
    return-void
.end method
