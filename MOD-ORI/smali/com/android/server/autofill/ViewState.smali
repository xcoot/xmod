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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getStateAsString()Ljava/lang/String;
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    const-class p0, Lcom/android/server/autofill/ViewState;

    .line 5
    .line 6
    const-string v2, "STATE_"

    .line 7
    .line 8
    invoke-static {p0, v2, v0, v1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final maybeCallOnFillReady(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 6
    .line 7
    and-int/lit8 v2, v2, 0x4

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, "ViewState"

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "Ignoring UI for "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " on "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    and-int/lit16 v2, v1, 0x800

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    and-int/lit16 v2, v1, 0x800

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    :goto_0
    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 70
    .line 71
    :goto_1
    if-eqz v2, :cond_18

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_18

    .line 84
    .line 85
    :cond_4
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 86
    .line 87
    iget-object v8, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 90
    .line 91
    move-object v14, v3

    .line 92
    check-cast v14, Lcom/android/server/autofill/Session;

    .line 93
    .line 94
    const-string v3, "Call to Session#onFillReady() rejected - session: "

    .line 95
    .line 96
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v4

    .line 99
    :try_start_0
    iget-object v5, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 100
    .line 101
    iget v6, v14, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    .line 102
    .line 103
    iget-object v5, v5, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 104
    .line 105
    new-instance v7, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    invoke-direct {v7, v6, v9}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 112
    .line 113
    .line 114
    iget-boolean v5, v14, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 115
    .line 116
    if-eqz v5, :cond_5

    .line 117
    .line 118
    const-string v0, "AutofillSession"

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v2, v14, Lcom/android/server/autofill/Session;->id:I

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, " destroyed"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 143
    .line 144
    const/16 v1, 0x9

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 152
    .line 153
    .line 154
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 155
    .line 156
    const/4 v1, 0x6

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 163
    .line 164
    .line 165
    monitor-exit v4

    .line 166
    goto/16 :goto_f

    .line 167
    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto/16 :goto_e

    .line 170
    .line 171
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    const/4 v3, 0x0

    .line 173
    if-eqz v0, :cond_6

    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_6

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 186
    .line 187
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

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_7

    .line 197
    .line 198
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/android/server/autofill/Session;->getActivityDisplayId(Landroid/os/IBinder;)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iput v0, v14, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 205
    .line 206
    :cond_7
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 207
    .line 208
    iget-object v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 209
    .line 210
    monitor-enter v5

    .line 211
    :try_start_1
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 218
    .line 219
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 220
    .line 221
    if-nez v4, :cond_8

    .line 222
    .line 223
    move-object v11, v3

    .line 224
    goto :goto_3

    .line 225
    :cond_8
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v4, v0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
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

    .line 242
    .line 243
    if-nez v11, :cond_9

    .line 244
    .line 245
    goto/16 :goto_d

    .line 246
    .line 247
    :cond_9
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 248
    .line 249
    monitor-enter v4

    .line 250
    :try_start_2
    iget-object v3, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 256
    .line 257
    .line 258
    move-result-wide v5

    .line 259
    iget-wide v12, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 260
    .line 261
    sub-long/2addr v5, v12

    .line 262
    long-to-int v5, v5

    .line 263
    iget-object v3, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 264
    .line 265
    new-instance v6, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 266
    .line 267
    const/16 v7, 0xd

    .line 268
    .line 269
    invoke-direct {v6, v5, v7}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 273
    .line 274
    .line 275
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 276
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    if-eqz v3, :cond_b

    .line 281
    .line 282
    invoke-static {v3, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_b

    .line 287
    .line 288
    invoke-virtual {v14, v2, v8, v9, v1}, Lcom/android/server/autofill/Session;->requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_a

    .line 293
    .line 294
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 295
    .line 296
    monitor-enter v1

    .line 297
    :try_start_3
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 298
    .line 299
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 300
    .line 301
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 306
    .line 307
    const/high16 v2, 0x20000

    .line 308
    .line 309
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 310
    .line 311
    .line 312
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 313
    .line 314
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 315
    .line 316
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 317
    .line 318
    const/4 v3, 0x3

    .line 319
    const/16 v4, 0xf

    .line 320
    .line 321
    invoke-direct {v2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 325
    .line 326
    .line 327
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    invoke-virtual {v14}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_f

    .line 332
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

    .line 337
    .line 338
    .line 339
    :cond_b
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->supportsInlineSuggestions()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_d

    .line 344
    .line 345
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 346
    .line 347
    monitor-enter v1

    .line 348
    :try_start_5
    invoke-virtual {v14, v2, v9}, Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_c

    .line 353
    .line 354
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 355
    .line 356
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 363
    .line 364
    const/16 v2, 0x2000

    .line 365
    .line 366
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 367
    .line 368
    .line 369
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 370
    .line 371
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 372
    .line 373
    iget v3, v14, Lcom/android/server/autofill/Session;->userId:I

    .line 374
    .line 375
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 376
    .line 377
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;

    .line 378
    .line 379
    const/4 v5, 0x0

    .line 380
    invoke-direct {v4, v3, v5, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 384
    .line 385
    .line 386
    monitor-exit v1

    .line 387
    goto/16 :goto_f

    .line 388
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

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    iget-object v3, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 400
    .line 401
    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 406
    .line 407
    iget-object v5, v14, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 408
    .line 409
    iget v6, v14, Lcom/android/server/autofill/Session;->id:I

    .line 410
    .line 411
    iget-boolean v7, v14, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 412
    .line 413
    iget-object v12, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 414
    .line 415
    iget-object v12, v12, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 416
    .line 417
    check-cast v12, Lcom/android/server/autofill/AutofillManagerService;

    .line 418
    .line 419
    iget-object v13, v12, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 420
    .line 421
    monitor-enter v13

    .line 422
    :try_start_6
    iget v12, v12, Lcom/android/server/autofill/AutofillManagerService;->mMaxInputLengthForAutofill:I

    .line 423
    .line 424
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 425
    iget v13, v14, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 431
    .line 432
    const-string v0, "AutofillUI"

    .line 433
    .line 434
    if-eqz v15, :cond_f

    .line 435
    .line 436
    if-nez v9, :cond_e

    .line 437
    .line 438
    const/4 v15, 0x0

    .line 439
    goto :goto_6

    .line 440
    :cond_e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 441
    .line 442
    .line 443
    move-result v15

    .line 444
    :goto_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v15

    .line 448
    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    filled-new-array {v8, v15, v5}, [Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    const-string/jumbo v15, "showFillUi(): id=%s, filter=%d chars, displayId=%d"

    .line 461
    .line 462
    .line 463
    invoke-static {v0, v15, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :cond_f
    const/16 v5, 0x38e

    .line 467
    .line 468
    invoke-static {v5, v4, v3, v6, v7}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    if-nez v9, :cond_10

    .line 473
    .line 474
    const/4 v4, 0x0

    .line 475
    goto :goto_7

    .line 476
    :cond_10
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    const/16 v5, 0x38f

    .line 485
    .line 486
    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    if-nez v4, :cond_11

    .line 495
    .line 496
    const/4 v4, 0x0

    .line 497
    goto :goto_8

    .line 498
    :cond_11
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    const/16 v5, 0x38d

    .line 511
    .line 512
    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 513
    .line 514
    .line 515
    move-result-object v15

    .line 516
    new-instance v7, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 517
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

    .line 525
    .line 526
    move-object v2, v13

    .line 527
    move-object v13, v15

    .line 528
    invoke-direct/range {v3 .. v13}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V

    .line 529
    .line 530
    .line 531
    iget-object v3, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 532
    .line 533
    if-nez v3, :cond_12

    .line 534
    .line 535
    const/4 v3, 0x0

    .line 536
    goto :goto_9

    .line 537
    :cond_12
    iget-object v3, v3, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 538
    .line 539
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    :goto_9
    if-eqz v3, :cond_14

    .line 544
    .line 545
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 546
    .line 547
    if-eqz v3, :cond_13

    .line 548
    .line 549
    const-string/jumbo v3, "postpone fill UI request.."

    .line 550
    .line 551
    .line 552
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    :cond_13
    iput-object v2, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 556
    .line 557
    goto :goto_a

    .line 558
    :cond_14
    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 559
    .line 560
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    .line 562
    .line 563
    :goto_a
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 564
    .line 565
    monitor-enter v1

    .line 566
    :try_start_7
    iget-wide v2, v14, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 567
    .line 568
    const-wide/16 v4, 0x0

    .line 569
    .line 570
    cmp-long v0, v2, v4

    .line 571
    .line 572
    if-nez v0, :cond_16

    .line 573
    .line 574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 575
    .line 576
    .line 577
    move-result-wide v2

    .line 578
    iput-wide v2, v14, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 579
    .line 580
    iget-wide v4, v14, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 581
    .line 582
    sub-long/2addr v2, v4

    .line 583
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 584
    .line 585
    if-eqz v0, :cond_15

    .line 586
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    const-string v4, "1st UI for "

    .line 590
    .line 591
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 595
    .line 596
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    const-string v4, " shown in "

    .line 600
    .line 601
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 605
    .line 606
    .line 607
    const-string v4, "AutofillSession"

    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .line 615
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

    .line 620
    .line 621
    const-string/jumbo v4, "id="

    .line 622
    .line 623
    .line 624
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    iget v4, v14, Lcom/android/server/autofill/Session;->id:I

    .line 628
    .line 629
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v4, " app="

    .line 633
    .line 634
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 638
    .line 639
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v4, " svc="

    .line 643
    .line 644
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 648
    .line 649
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v4, " latency="

    .line 657
    .line 658
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 662
    .line 663
    .line 664
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 665
    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-virtual {v4, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual/range {v16 .. v16}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    const/16 v3, 0x479

    .line 682
    .line 683
    invoke-virtual {v14, v0, v3, v2}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 684
    .line 685
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

    .line 697
    .line 698
    .line 699
    const/4 v1, 0x0

    .line 700
    new-array v1, v1, [Ljava/lang/Object;

    .line 701
    .line 702
    invoke-virtual {v14, v3, v0, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    .line 704
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

    .line 2
    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 6
    .line 7
    return-void
.end method

.method public final setState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    or-int/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 11
    .line 12
    :goto_0
    const/4 v0, 0x4

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 16
    .line 17
    or-int/lit16 p1, p1, 0x800

    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ViewState: [id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, ", datasetId:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v1, ", state:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const-string v1, ", currentValue:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const-string v1, ", candidateSaveValue:"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    const-string v1, ", autofilledValue:"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    const-string v1, ", sanitizedValue:"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    const-string v1, ", virtualBounds:"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_5
    const-string p0, "]"

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
