.class public final Lcom/android/server/autofill/ViewState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final id:Landroid/view/autofill/AutofillId;

.field public mAutofilledValue:Landroid/view/autofill/AutofillValue;

.field public mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

.field public mCurrentValue:Landroid/view/autofill/AutofillValue;

.field public mDatasetId:Ljava/lang/String;

.field public final mIsPrimaryCredential:Z

.field public final mListener:Lcom/android/server/autofill/ViewState$Listener;

.field public mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

.field public mSanitizedValue:Landroid/view/autofill/AutofillValue;

.field public mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

.field public mState:I

.field public mVirtualBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 8
    iput p3, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 10
    iput-boolean p4, p0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final getStateAsString()Ljava/lang/String;
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 3
    int-to-long v0, p0

    .line 4
    const-class p0, Lcom/android/server/autofill/ViewState;

    .line 6
    const-string v2, "STATE_"

    .line 8
    invoke-static {p0, v2, v0, v1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final maybeCallOnFillReady(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    iget v2, v0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 7
    and-int/lit8 v2, v2, 0x4

    .line 9
    if-eqz v2, :cond_1

    .line 11
    and-int/lit8 v2, v1, 0x1

    .line 13
    if-nez v2, :cond_1

    .line 15
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    const-string v1, "ViewState"

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    const-string v3, "Ignoring UI for "

    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, " on "

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    .line 55
    if-eqz v2, :cond_2

    .line 57
    and-int/lit16 v2, v1, 0x800

    .line 59
    if-eqz v2, :cond_3

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    and-int/lit16 v2, v1, 0x800

    .line 64
    if-nez v2, :cond_3

    .line 66
    :goto_0
    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 71
    :goto_1
    if-eqz v2, :cond_18

    .line 73
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_4

    .line 79
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_18

    .line 85
    :cond_4
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 87
    iget-object v8, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 89
    iget-object v0, v0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 91
    move-object v14, v3

    .line 92
    check-cast v14, Lcom/android/server/autofill/Session;

    .line 94
    const-string v3, "Call to Session#onFillReady() rejected - session: "

    .line 96
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 98
    monitor-enter v4

    .line 99
    :try_start_0
    iget-object v5, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 101
    iget v6, v14, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    .line 103
    iget-object v5, v5, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 105
    new-instance v7, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 107
    const/4 v9, 0x0

    .line 108
    invoke-direct {v7, v6, v9}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 111
    invoke-virtual {v5, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    iget-boolean v5, v14, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 116
    if-eqz v5, :cond_5

    .line 118
    const-string v0, "AutofillSession"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget v2, v14, Lcom/android/server/autofill/Session;->id:I

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, " destroyed"

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 144
    const/16 v1, 0x9

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 149
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 151
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 154
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 156
    const/4 v1, 0x6

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 160
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 162
    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 165
    monitor-exit v4

    .line 166
    goto/16 :goto_f

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto/16 :goto_e

    .line 171
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    const/4 v3, 0x0

    .line 173
    if-eqz v0, :cond_6

    .line 175
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_6

    .line 181
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    move-object v9, v0

    .line 190
    goto :goto_2

    .line 191
    :cond_6
    move-object v9, v3

    .line 192
    :goto_2
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableNoSubDisplay()Z

    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_7

    .line 198
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 200
    invoke-static {v0}, Lcom/android/server/autofill/Session;->getActivityDisplayId(Landroid/os/IBinder;)I

    .line 203
    move-result v0

    .line 204
    iput v0, v14, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 206
    :cond_7
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 208
    iget-object v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 210
    monitor-enter v5

    .line 211
    :try_start_1
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 213
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    .line 216
    move-result-object v10

    .line 217
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 219
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 221
    if-nez v4, :cond_8

    .line 223
    move-object v11, v3

    .line 224
    goto :goto_3

    .line 225
    :cond_8
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 227
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v4, v0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 238
    move-result-object v0

    .line 239
    move-object v11, v0

    .line 240
    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 241
    if-eqz v10, :cond_17

    .line 243
    if-nez v11, :cond_9

    .line 245
    goto/16 :goto_d

    .line 247
    :cond_9
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 249
    monitor-enter v4

    .line 250
    :try_start_2
    iget-object v3, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 252
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 258
    move-result-wide v5

    .line 259
    iget-wide v12, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 261
    sub-long/2addr v5, v12

    .line 262
    long-to-int v5, v5

    .line 263
    iget-object v3, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 265
    new-instance v6, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 267
    const/16 v7, 0xd

    .line 269
    invoke-direct {v6, v5, v7}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 272
    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 275
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 276
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    .line 279
    move-result-object v3

    .line 280
    if-eqz v3, :cond_b

    .line 282
    invoke-static {v3, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_b

    .line 288
    invoke-virtual {v14, v2, v8, v9, v1}, Lcom/android/server/autofill/Session;->requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Z

    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_a

    .line 294
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 296
    monitor-enter v1

    .line 297
    :try_start_3
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 299
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 301
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 307
    const/high16 v2, 0x20000

    .line 309
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 312
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 314
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 316
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 318
    const/4 v3, 0x3

    .line 319
    const/16 v4, 0xf

    .line 321
    invoke-direct {v2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 324
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 327
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    invoke-virtual {v14}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 331
    goto/16 :goto_f

    .line 333
    :catchall_1
    move-exception v0

    .line 334
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 335
    throw v0

    .line 336
    :cond_a
    invoke-virtual {v14}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 339
    :cond_b
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->supportsInlineSuggestions()Z

    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_d

    .line 345
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 347
    monitor-enter v1

    .line 348
    :try_start_5
    invoke-virtual {v14, v2, v9}, Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z

    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_c

    .line 354
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 356
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 358
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-result-object v0

    .line 362
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 364
    const/16 v2, 0x2000

    .line 366
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 369
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 371
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 373
    iget v3, v14, Lcom/android/server/autofill/Session;->userId:I

    .line 375
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 377
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;

    .line 379
    const/4 v5, 0x0

    .line 380
    invoke-direct {v4, v3, v5, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;)V

    .line 383
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 386
    monitor-exit v1

    .line 387
    goto/16 :goto_f

    .line 389
    :catchall_2
    move-exception v0

    .line 390
    goto :goto_4

    .line 391
    :cond_c
    monitor-exit v1

    .line 392
    goto :goto_5

    .line 393
    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 394
    throw v0

    .line 395
    :cond_d
    :goto_5
    invoke-virtual {v14}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 398
    move-result-object v1

    .line 399
    iget-object v3, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 401
    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 404
    move-result-object v3

    .line 405
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 407
    iget-object v5, v14, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 409
    iget v6, v14, Lcom/android/server/autofill/Session;->id:I

    .line 411
    iget-boolean v7, v14, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 413
    iget-object v12, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 415
    iget-object v12, v12, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 417
    check-cast v12, Lcom/android/server/autofill/AutofillManagerService;

    .line 419
    iget-object v13, v12, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 421
    monitor-enter v13

    .line 422
    :try_start_6
    iget v12, v12, Lcom/android/server/autofill/AutofillManagerService;->mMaxInputLengthForAutofill:I

    .line 424
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 425
    iget v13, v14, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 427
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 432
    const-string v0, "AutofillUI"

    .line 434
    if-eqz v15, :cond_f

    .line 436
    if-nez v9, :cond_e

    .line 438
    const/4 v15, 0x0

    .line 439
    goto :goto_6

    .line 440
    :cond_e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 443
    move-result v15

    .line 444
    :goto_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    move-result-object v15

    .line 448
    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    .line 451
    move-result v5

    .line 452
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 455
    move-result-object v5

    .line 456
    filled-new-array {v8, v15, v5}, [Ljava/lang/Object;

    .line 459
    move-result-object v5

    .line 460
    const-string/jumbo v15, "showFillUi(): id=%s, filter=%d chars, displayId=%d"

    .line 463
    invoke-static {v0, v15, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    :cond_f
    const/16 v5, 0x38e

    .line 468
    invoke-static {v5, v4, v3, v6, v7}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 471
    move-result-object v3

    .line 472
    if-nez v9, :cond_10

    .line 474
    const/4 v4, 0x0

    .line 475
    goto :goto_7

    .line 476
    :cond_10
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 479
    move-result v4

    .line 480
    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    move-result-object v4

    .line 484
    const/16 v5, 0x38f

    .line 486
    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 489
    move-result-object v3

    .line 490
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 493
    move-result-object v4

    .line 494
    if-nez v4, :cond_11

    .line 496
    const/4 v4, 0x0

    .line 497
    goto :goto_8

    .line 498
    :cond_11
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 501
    move-result-object v4

    .line 502
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 505
    move-result v4

    .line 506
    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    move-result-object v4

    .line 510
    const/16 v5, 0x38d

    .line 512
    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 515
    move-result-object v15

    .line 516
    new-instance v7, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 518
    move-object v3, v7

    .line 519
    move-object v4, v1

    .line 520
    move-object v5, v14

    .line 521
    move v6, v13

    .line 522
    move-object v13, v7

    .line 523
    move-object v7, v2

    .line 524
    move-object/from16 v16, v2

    .line 526
    move-object v2, v13

    .line 527
    move-object v13, v15

    .line 528
    invoke-direct/range {v3 .. v13}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V

    .line 531
    iget-object v3, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 533
    if-nez v3, :cond_12

    .line 535
    const/4 v3, 0x0

    .line 536
    goto :goto_9

    .line 537
    :cond_12
    iget-object v3, v3, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 539
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    .line 542
    move-result v3

    .line 543
    :goto_9
    if-eqz v3, :cond_14

    .line 545
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 547
    if-eqz v3, :cond_13

    .line 549
    const-string/jumbo v3, "postpone fill UI request.."

    .line 552
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_13
    iput-object v2, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 557
    goto :goto_a

    .line 558
    :cond_14
    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 560
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 563
    :goto_a
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 565
    monitor-enter v1

    .line 566
    :try_start_7
    iget-wide v2, v14, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 568
    const-wide/16 v4, 0x0

    .line 570
    cmp-long v0, v2, v4

    .line 572
    if-nez v0, :cond_16

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 577
    move-result-wide v2

    .line 578
    iput-wide v2, v14, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 580
    iget-wide v4, v14, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 582
    sub-long/2addr v2, v4

    .line 583
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 585
    if-eqz v0, :cond_15

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    .line 589
    const-string v4, "1st UI for "

    .line 591
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 596
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 599
    const-string v4, " shown in "

    .line 601
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 607
    const-string v4, "AutofillSession"

    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    move-result-object v0

    .line 613
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    goto :goto_b

    .line 617
    :catchall_3
    move-exception v0

    .line 618
    goto :goto_c

    .line 619
    :cond_15
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 621
    const-string/jumbo v4, "id="

    .line 624
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    iget v4, v14, Lcom/android/server/autofill/Session;->id:I

    .line 629
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    const-string v4, " app="

    .line 634
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 639
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 642
    const-string v4, " svc="

    .line 644
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 649
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 652
    move-result-object v4

    .line 653
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v4, " latency="

    .line 658
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 664
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    move-result-object v0

    .line 670
    invoke-virtual {v4, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {v16 .. v16}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 676
    move-result v0

    .line 677
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 680
    move-result-object v2

    .line 681
    const/16 v3, 0x479

    .line 683
    invoke-virtual {v14, v0, v3, v2}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 686
    :cond_16
    monitor-exit v1

    .line 687
    goto :goto_f

    .line 688
    :goto_c
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 689
    throw v0

    .line 690
    :catchall_4
    move-exception v0

    .line 691
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 692
    throw v0

    .line 693
    :catchall_5
    move-exception v0

    .line 694
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 695
    throw v0

    .line 696
    :cond_17
    :goto_d
    const-string/jumbo v0, "onFillReady(): no service label or icon"

    .line 699
    const/4 v1, 0x0

    .line 700
    new-array v1, v1, [Ljava/lang/Object;

    .line 702
    invoke-virtual {v14, v3, v0, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    goto :goto_f

    .line 706
    :catchall_6
    move-exception v0

    .line 707
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 708
    throw v0

    .line 709
    :goto_e
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 710
    throw v0

    .line 711
    :cond_18
    :goto_f
    return-void
.end method

.method public final resetState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 7
    return-void
.end method

.method public final setState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    or-int/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 12
    :goto_0
    const/4 v0, 0x4

    .line 13
    if-ne p1, v0, :cond_1

    .line 15
    iget p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 17
    or-int/lit16 p1, p1, 0x800

    .line 19
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 21
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ViewState: [id="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const-string v1, ", datasetId:"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_0
    const-string v1, ", state:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 41
    if-eqz v1, :cond_1

    .line 43
    const-string v1, ", currentValue:"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 55
    if-eqz v1, :cond_2

    .line 57
    const-string v1, ", candidateSaveValue:"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 69
    if-eqz v1, :cond_3

    .line 71
    const-string v1, ", autofilledValue:"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 83
    if-eqz v1, :cond_4

    .line 85
    const-string v1, ", sanitizedValue:"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 97
    if-eqz v1, :cond_5

    .line 99
    const-string v1, ", virtualBounds:"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    :cond_5
    const-string p0, "]"

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
