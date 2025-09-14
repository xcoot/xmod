.class public final Lcom/android/server/autofill/ui/DialogFillUi;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

.field public mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

.field public final mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDialog:Landroid/app/Dialog;

.field public final mFilterText:Ljava/lang/String;

.field public final mListView:Landroid/widget/ListView;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mThemeId:I

.field public final mVisibleDatasetsMaxCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/AutoFillUI$3;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p3

    .line 5
    move-object/from16 v0, p5

    .line 7
    move/from16 v3, p9

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 14
    const-string v5, "DialogFillUi"

    .line 16
    if-eqz v4, :cond_0

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v6, "nightMode: "

    .line 23
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    if-eqz v3, :cond_1

    .line 38
    const v3, 0x103042f

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v3, 0x103043c

    .line 45
    :goto_0
    iput v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 47
    move-object/from16 v4, p10

    .line 49
    iput-object v4, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 51
    move-object/from16 v6, p8

    .line 53
    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 55
    move-object/from16 v6, p6

    .line 57
    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    .line 59
    move-object/from16 v6, p7

    .line 61
    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    .line 63
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .line 65
    move-object/from16 v7, p1

    .line 67
    invoke-direct {v6, v7, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 70
    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 75
    move-result-object v7

    .line 76
    const v8, 0x109004e

    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    move-result-object v7

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getShowFillDialogIcon()Z

    .line 87
    move-result v8

    .line 88
    const/4 v10, 0x0

    .line 89
    if-eqz v8, :cond_4

    .line 91
    if-nez v0, :cond_2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const v8, 0x102021e

    .line 97
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Landroid/widget/ImageView;

    .line 103
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 106
    move-result v11

    .line 107
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 110
    move-result v12

    .line 111
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 113
    if-eqz v13, :cond_3

    .line 115
    const-string v13, "Adding service icon ("

    .line 117
    const-string/jumbo v14, "x"

    .line 120
    const-string v15, ")"

    .line 122
    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v11

    .line 126
    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDialogHeader()Landroid/widget/RemoteViews;

    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 142
    move-result-object v0

    .line 143
    if-nez v0, :cond_5

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    const v8, 0x1020212

    .line 149
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Landroid/view/ViewGroup;

    .line 155
    new-instance v11, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    .line 157
    const/4 v12, 0x2

    .line 158
    invoke-direct {v11, v1, v12}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    .line 161
    move-object v12, v7

    .line 162
    check-cast v12, Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {v0, v6, v12, v11, v3}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 174
    :goto_2
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    .line 177
    move-result v0

    .line 178
    if-lez v0, :cond_6

    .line 180
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    .line 183
    move-result v0

    .line 184
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 186
    if-eqz v3, :cond_7

    .line 188
    const-string/jumbo v3, "overriding maximum visible datasets to "

    .line 191
    invoke-static {v0, v3, v5}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    goto :goto_3

    .line 195
    :cond_6
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    move-result-object v0

    .line 199
    const v3, 0x10e0009

    .line 202
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 205
    move-result v0

    .line 206
    :cond_7
    :goto_3
    iput v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 211
    move-result-object v3

    .line 212
    const-string v8, "Error inflating remote views"

    .line 214
    if-eqz v3, :cond_8

    .line 216
    iput-object v9, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 218
    iput-object v9, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 220
    move-object/from16 v3, p2

    .line 222
    :try_start_0
    invoke-virtual {v1, v7, v3}, Lcom/android/server/autofill/ui/DialogFillUi;->initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto/16 :goto_c

    .line 227
    :catch_0
    move-exception v0

    .line 228
    move-object v2, v0

    .line 229
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onCanceled()V

    .line 232
    invoke-static {v5, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    iput-object v9, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 237
    return-void

    .line 238
    :cond_8
    move-object/from16 v3, p2

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 243
    move-result-object v4

    .line 244
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 247
    move-result v4

    .line 248
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 250
    if-eqz v11, :cond_9

    .line 252
    new-instance v11, Ljava/lang/StringBuilder;

    .line 254
    const-string v12, "Number datasets: "

    .line 256
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v12, " max visible: "

    .line 264
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v0

    .line 274
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_9
    new-instance v11, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    .line 279
    const/4 v0, 0x1

    .line 280
    invoke-direct {v11, v1, v0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    .line 283
    new-instance v12, Ljava/util/ArrayList;

    .line 285
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    move v13, v10

    .line 289
    :goto_4
    if-ge v13, v4, :cond_11

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 294
    move-result-object v0

    .line 295
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/service/autofill/Dataset;

    .line 301
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 304
    move-result-object v14

    .line 305
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 308
    move-result v14

    .line 309
    if-ltz v14, :cond_10

    .line 311
    invoke-virtual {v0, v14}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    .line 314
    move-result-object v15

    .line 315
    invoke-static {v15}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 318
    move-result-object v15

    .line 319
    if-nez v15, :cond_a

    .line 321
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 323
    if-eqz v14, :cond_10

    .line 325
    new-instance v14, Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v15, "not displaying UI on field "

    .line 330
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    const-string v15, " because service didn\'t provide a presentation for it on "

    .line 338
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v0

    .line 348
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    goto/16 :goto_a

    .line 353
    :cond_a
    :try_start_1
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 355
    if-eqz v16, :cond_b

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    .line 359
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    const-string/jumbo v10, "setting remote view for "

    .line 365
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    move-result-object v6

    .line 375
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    goto :goto_5

    .line 379
    :catch_1
    move-exception v0

    .line 380
    goto/16 :goto_9

    .line 382
    :cond_b
    :goto_5
    iget-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 384
    iget v10, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 386
    invoke-virtual {v15, v6, v9, v11, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 389
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    invoke-virtual {v0, v14}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 393
    move-result-object v10

    .line 394
    if-nez v10, :cond_d

    .line 396
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 399
    move-result-object v10

    .line 400
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 403
    move-result-object v10

    .line 404
    check-cast v10, Landroid/view/autofill/AutofillValue;

    .line 406
    if-eqz v10, :cond_c

    .line 408
    invoke-virtual {v10}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 411
    move-result v14

    .line 412
    if-eqz v14, :cond_c

    .line 414
    invoke-virtual {v10}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 417
    move-result-object v10

    .line 418
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 421
    move-result-object v10

    .line 422
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 425
    move-result-object v10

    .line 426
    goto :goto_6

    .line 427
    :cond_c
    move-object v10, v9

    .line 428
    :goto_6
    move-object v14, v10

    .line 429
    move-object v10, v9

    .line 430
    const/4 v9, 0x1

    .line 431
    goto :goto_8

    .line 432
    :cond_d
    iget-object v10, v10, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 434
    if-nez v10, :cond_f

    .line 436
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 438
    if-eqz v15, :cond_e

    .line 440
    new-instance v15, Ljava/lang/StringBuilder;

    .line 442
    const-string v9, "Explicitly disabling filter at id "

    .line 444
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    const-string v9, " for dataset #"

    .line 452
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    move-result-object v9

    .line 462
    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_e
    const/4 v9, 0x0

    .line 466
    :goto_7
    const/4 v14, 0x0

    .line 467
    goto :goto_8

    .line 468
    :cond_f
    const/4 v9, 0x1

    .line 469
    goto :goto_7

    .line 470
    :goto_8
    new-instance v15, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    .line 472
    move-object/from16 p5, v15

    .line 474
    move-object/from16 p6, v0

    .line 476
    move-object/from16 p7, v10

    .line 478
    move/from16 p8, v9

    .line 480
    move-object/from16 p9, v14

    .line 482
    move-object/from16 p10, v6

    .line 484
    invoke-direct/range {p5 .. p10}, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    .line 487
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    goto :goto_a

    .line 491
    :goto_9
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    :cond_10
    :goto_a
    add-int/lit8 v13, v13, 0x1

    .line 496
    const/4 v9, 0x0

    .line 497
    const/4 v10, 0x0

    .line 498
    goto/16 :goto_4

    .line 500
    :cond_11
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 502
    invoke-direct {v0, v1, v12}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Ljava/util/List;)V

    .line 505
    iput-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 507
    const v2, 0x1020213

    .line 510
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 513
    move-result-object v2

    .line 514
    check-cast v2, Landroid/widget/ListView;

    .line 516
    iput-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 518
    new-instance v3, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;

    .line 520
    invoke-direct {v3, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 523
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 526
    const/4 v4, 0x0

    .line 527
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 530
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 533
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    .line 536
    move-result v2

    .line 537
    const/4 v4, 0x1

    .line 538
    if-ne v2, v4, :cond_12

    .line 540
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    .line 542
    const/4 v4, 0x0

    .line 543
    invoke-direct {v2, v4, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 546
    const v3, 0x1020216

    .line 549
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 552
    move-result-object v3

    .line 553
    check-cast v3, Landroid/widget/TextView;

    .line 555
    const v4, 0x1040205

    .line 558
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 561
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    const/4 v2, 0x0

    .line 565
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    :cond_12
    if-nez p4, :cond_13

    .line 570
    const/4 v2, 0x0

    .line 571
    iput-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 573
    goto :goto_b

    .line 574
    :cond_13
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 577
    move-result-object v2

    .line 578
    iput-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 580
    :goto_b
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    .line 583
    move-result v2

    .line 584
    new-instance v3, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;

    .line 586
    invoke-direct {v3, v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)V

    .line 589
    iget-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 591
    new-instance v4, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;

    .line 593
    invoke-direct {v4, v1, v2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    .line 596
    invoke-virtual {v3, v0, v4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 599
    :goto_c
    const v0, 0x1020214

    .line 602
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 605
    move-result-object v0

    .line 606
    check-cast v0, Landroid/widget/TextView;

    .line 608
    const v2, 0x104020f

    .line 611
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 614
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    .line 616
    const/4 v3, 0x1

    .line 617
    invoke-direct {v2, v3, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 620
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    new-instance v0, Landroid/app/Dialog;

    .line 625
    iget-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 627
    iget v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 629
    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 632
    iput-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 634
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 637
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 640
    move-result-object v2

    .line 641
    const/16 v3, 0x7f6

    .line 643
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 646
    const v3, 0x20002

    .line 649
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 652
    const v3, 0x3f19999a    # 0.6f

    .line 655
    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 658
    const/16 v3, 0x10

    .line 660
    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 663
    const/16 v3, 0x20

    .line 665
    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 668
    const/16 v3, 0x51

    .line 670
    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 673
    const/4 v3, 0x1

    .line 674
    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 677
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 680
    move-result-object v3

    .line 681
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 683
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 686
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 689
    move-result-object v2

    .line 690
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 697
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 699
    iget-object v4, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 701
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 704
    move-result-object v4

    .line 705
    const v6, 0x105005b

    .line 708
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 711
    move-result v4

    .line 712
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 715
    move-result v2

    .line 716
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 718
    iget-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 720
    const v4, 0x1040208

    .line 723
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 726
    move-result-object v2

    .line 727
    iput-object v2, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 729
    const v2, 0x103032b

    .line 732
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 734
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;

    .line 736
    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 739
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 742
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;

    .line 744
    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 747
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 750
    const-string v2, "Showing fill dialog"

    .line 752
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 758
    iget-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 760
    const/4 v1, 0x0

    .line 761
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 764
    return-void
.end method


# virtual methods
.method public final initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogPresentation()Landroid/widget/RemoteViews;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 18
    move-result-object v0

    .line 19
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    const v1, 0x1020211

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/view/ViewGroup;

    .line 30
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, p0, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    .line 36
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 38
    move-object v4, p1

    .line 39
    check-cast v4, Landroid/view/ViewGroup;

    .line 41
    iget v5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 43
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 58
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;I)V

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;I)V

    .line 73
    const p0, 0x1020216

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Landroid/widget/TextView;

    .line 82
    const p1, 0x1040205

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    return-void

    .line 95
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 97
    const-string p1, "No presentation for fill dialog authentication"

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NO TITLE"

    .line 3
    return-object p0
.end method
