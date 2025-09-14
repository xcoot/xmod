.class public final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field public final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field public mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field public final mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

.field public mContentHeight:I

.field public mContentWidth:I

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public mFilterText:Ljava/lang/String;

.field public final mFooter:Landroid/view/View;

.field public final mFullScreen:Z

.field public final mHeader:Landroid/view/View;

.field public final mListView:Landroid/widget/ListView;

.field public final mMaxInputLengthForAutofill:I

.field public final mTempPoint:Landroid/graphics/Point;

.field public final mThemeId:I

.field public final mVisibleDatasetsMaxCount:I

.field public final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field public final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZILcom/android/server/autofill/ui/AutoFillUI$1;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p3

    .line 5
    move-object/from16 v3, p5

    .line 7
    move-object/from16 v4, p10

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Point;

    .line 14
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 17
    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 19
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 21
    invoke-direct {v5, v1}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 24
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 26
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    const-string v6, "FillUi"

    .line 30
    if-eqz v5, :cond_0

    .line 32
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayId()I

    .line 39
    move-result v7

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v7

    .line 44
    filled-new-array {v5, v7}, [Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    const-string/jumbo v7, "nightMode: %b displayId: %d"

    .line 51
    invoke-static {v6, v7, v5}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    if-eqz p8, :cond_1

    .line 56
    const v5, 0x103042d

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const v5, 0x103043b

    .line 63
    :goto_0
    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    .line 65
    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 67
    sget-object v7, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 69
    if-eqz v7, :cond_3

    .line 71
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 73
    if-eqz v7, :cond_2

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v8, "forcing full-screen mode to "

    .line 80
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    sget-object v8, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v7

    .line 92
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    sget-object v7, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 97
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    move-result v7

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 105
    move-result-object v7

    .line 106
    const-string v8, "android.software.leanback"

    .line 108
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 111
    move-result v7

    .line 112
    :goto_1
    iput-boolean v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 114
    new-instance v8, Landroid/view/ContextThemeWrapper;

    .line 116
    move-object/from16 v9, p1

    .line 118
    invoke-direct {v8, v9, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 121
    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 123
    move/from16 v9, p9

    .line 125
    iput v9, v1, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    .line 127
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 130
    move-result-object v9

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    .line 134
    move-result-object v10

    .line 135
    invoke-static {v10}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 138
    move-result-object v10

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    .line 142
    move-result-object v11

    .line 143
    invoke-static {v11}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 146
    move-result-object v11

    .line 147
    const/4 v12, 0x0

    .line 148
    if-eqz v7, :cond_4

    .line 150
    const v13, 0x109004c

    .line 153
    invoke-virtual {v9, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 156
    move-result-object v9

    .line 157
    check-cast v9, Landroid/view/ViewGroup;

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    if-nez v10, :cond_6

    .line 162
    if-eqz v11, :cond_5

    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const v13, 0x109004b

    .line 168
    invoke-virtual {v9, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Landroid/view/ViewGroup;

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    :goto_2
    const v13, 0x109004d

    .line 178
    invoke-virtual {v9, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 181
    move-result-object v9

    .line 182
    check-cast v9, Landroid/view/ViewGroup;

    .line 184
    :goto_3
    const/4 v13, 0x1

    .line 185
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 188
    const v14, 0x1020210

    .line 191
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 194
    move-result-object v14

    .line 195
    check-cast v14, Landroid/widget/TextView;

    .line 197
    if-eqz v14, :cond_7

    .line 199
    const v15, 0x1040225

    .line 202
    filled-new-array/range {p6 .. p6}, [Ljava/lang/Object;

    .line 205
    move-result-object v13

    .line 206
    invoke-virtual {v8, v15, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    move-result-object v13

    .line 210
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_7
    const v13, 0x102020d

    .line 216
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 219
    move-result-object v13

    .line 220
    check-cast v13, Landroid/widget/ImageView;

    .line 222
    if-eqz v13, :cond_8

    .line 224
    move-object/from16 v14, p7

    .line 226
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_8
    if-eqz v7, :cond_9

    .line 231
    invoke-virtual {v8}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 234
    move-result-object v13

    .line 235
    invoke-virtual {v13, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 238
    const/4 v13, -0x1

    .line 239
    iput v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 241
    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 243
    div-int/lit8 v13, v13, 0x2

    .line 245
    iput v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 247
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 249
    if-eqz v13, :cond_9

    .line 251
    new-instance v13, Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v14, "initialized fillscreen LayoutParams "

    .line 256
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    iget v14, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 261
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v14, ","

    .line 266
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v14, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 271
    invoke-static {v13, v14, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 274
    :cond_9
    new-instance v13, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;

    .line 276
    invoke-direct {v13, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 279
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 282
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    .line 285
    move-result v13

    .line 286
    const/4 v14, 0x5

    .line 287
    if-lez v13, :cond_a

    .line 289
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    .line 292
    move-result v13

    .line 293
    iput v13, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 295
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 297
    if-eqz v15, :cond_c

    .line 299
    const-string/jumbo v15, "overriding maximum visible datasets to "

    .line 302
    invoke-static {v13, v15, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    goto :goto_4

    .line 306
    :cond_a
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    .line 309
    move-result v13

    .line 310
    if-eqz v13, :cond_b

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    .line 315
    move-result v13

    .line 316
    and-int/lit8 v13, v13, 0x8

    .line 318
    if-eqz v13, :cond_b

    .line 320
    iput v14, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 322
    goto :goto_4

    .line 323
    :cond_b
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    move-result-object v13

    .line 327
    const v15, 0x10e0009

    .line 330
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 333
    move-result v13

    .line 334
    iput v13, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 336
    :cond_c
    :goto_4
    new-instance v13, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;

    .line 338
    invoke-direct {v13, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 344
    move-result-object v15

    .line 345
    const-string v14, "Error inflating remote views"

    .line 347
    if-eqz v15, :cond_10

    .line 349
    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 351
    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 353
    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 355
    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 357
    const v2, 0x102020f

    .line 360
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 363
    move-result-object v2

    .line 364
    check-cast v2, Landroid/view/ViewGroup;

    .line 366
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    .line 369
    move-result-object v10

    .line 370
    invoke-static {v10}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 373
    move-result-object v10

    .line 374
    if-eqz v10, :cond_f

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    .line 379
    move-result-object v10

    .line 380
    invoke-virtual {v10, v8, v9, v13, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 383
    move-result-object v5

    .line 384
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    const/4 v4, 0x1

    .line 388
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 391
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;

    .line 393
    move-object/from16 v15, p2

    .line 395
    invoke-direct {v4, v1, v15}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    .line 398
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    if-nez v7, :cond_e

    .line 403
    invoke-static {v8, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 406
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 409
    move-result-object v2

    .line 410
    const/4 v4, -0x2

    .line 411
    if-eqz v7, :cond_d

    .line 413
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 415
    goto :goto_5

    .line 416
    :cond_d
    move v6, v4

    .line 417
    :goto_5
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 422
    move-result-object v2

    .line 423
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 425
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 427
    const/high16 v4, -0x80000000

    .line 429
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 432
    move-result v2

    .line 433
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 435
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 438
    move-result v0

    .line 439
    invoke-virtual {v9, v2, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 442
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 445
    move-result v0

    .line 446
    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 448
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 451
    move-result v0

    .line 452
    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 454
    :cond_e
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 456
    invoke-direct {v0, v1, v9, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    .line 459
    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 464
    goto/16 :goto_11

    .line 466
    :catch_0
    move-exception v0

    .line 467
    goto :goto_6

    .line 468
    :cond_f
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 470
    const-string v2, "Permission error accessing RemoteView"

    .line 472
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 475
    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    :goto_6
    iget-object v2, v4, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 478
    const/4 v3, 0x5

    .line 479
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 482
    iget-object v2, v4, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 484
    iget-object v3, v4, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 486
    const/4 v4, 0x1

    .line 487
    invoke-virtual {v2, v3, v4}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 490
    invoke-static {v6, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 495
    return-void

    .line 496
    :cond_10
    move-object/from16 v15, p2

    .line 498
    const/4 v4, 0x1

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 502
    move-result-object v0

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 506
    move-result v7

    .line 507
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 509
    if-eqz v0, :cond_11

    .line 511
    const-string v0, "Number datasets: "

    .line 513
    const-string v4, " max visible: "

    .line 515
    invoke-static {v7, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    move-result-object v0

    .line 519
    iget v4, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 521
    invoke-static {v0, v4, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 524
    :cond_11
    if-eqz v10, :cond_13

    .line 526
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;

    .line 528
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 531
    invoke-virtual {v10, v8, v12, v0, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 534
    move-result-object v10

    .line 535
    iput-object v10, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 537
    const v12, 0x102020c

    .line 540
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 543
    move-result-object v12

    .line 544
    check-cast v12, Landroid/widget/LinearLayout;

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    .line 549
    move-result-object v4

    .line 550
    invoke-virtual {v1, v10, v4}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 553
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 555
    if-eqz v4, :cond_12

    .line 557
    const-string v4, "adding header"

    .line 559
    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_12
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    const/4 v4, 0x0

    .line 566
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 569
    goto :goto_7

    .line 570
    :cond_13
    move-object v4, v12

    .line 571
    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 573
    const/4 v0, 0x0

    .line 574
    :goto_7
    if-eqz v11, :cond_17

    .line 576
    const v4, 0x102020b

    .line 579
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 582
    move-result-object v4

    .line 583
    check-cast v4, Landroid/widget/LinearLayout;

    .line 585
    if-eqz v4, :cond_16

    .line 587
    if-nez v0, :cond_14

    .line 589
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;

    .line 591
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 594
    :cond_14
    const/4 v10, 0x0

    .line 595
    invoke-virtual {v11, v8, v10, v0, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 598
    move-result-object v0

    .line 599
    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    .line 604
    move-result-object v5

    .line 605
    invoke-virtual {v1, v0, v5}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 608
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 610
    if-eqz v5, :cond_15

    .line 612
    const-string v5, "adding footer"

    .line 614
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_15
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 620
    const/4 v5, 0x0

    .line 621
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    const/4 v4, 0x0

    .line 625
    goto :goto_8

    .line 626
    :cond_16
    const/4 v4, 0x0

    .line 627
    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 629
    goto :goto_8

    .line 630
    :cond_17
    const/4 v4, 0x0

    .line 631
    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 633
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    .line 635
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 638
    const/4 v5, 0x0

    .line 639
    :goto_9
    if-ge v5, v7, :cond_1f

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 644
    move-result-object v0

    .line 645
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 648
    move-result-object v0

    .line 649
    check-cast v0, Landroid/service/autofill/Dataset;

    .line 651
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 654
    move-result-object v8

    .line 655
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 658
    move-result v8

    .line 659
    if-ltz v8, :cond_18

    .line 661
    invoke-virtual {v0, v8}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    .line 664
    move-result-object v10

    .line 665
    invoke-static {v10}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 668
    move-result-object v10

    .line 669
    if-nez v10, :cond_19

    .line 671
    new-instance v8, Ljava/lang/StringBuilder;

    .line 673
    const-string/jumbo v10, "not displaying UI on field "

    .line 676
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    const-string v10, " because service didn\'t provide a presentation for it on "

    .line 684
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    move-result-object v0

    .line 694
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_18
    move/from16 p7, v7

    .line 699
    goto/16 :goto_f

    .line 701
    :cond_19
    :try_start_2
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 703
    if-eqz v11, :cond_1a

    .line 705
    new-instance v11, Ljava/lang/StringBuilder;

    .line 707
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    const-string/jumbo v12, "setting remote view for "

    .line 713
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    move-result-object v11

    .line 723
    invoke-static {v6, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    goto :goto_a

    .line 727
    :catch_1
    move-exception v0

    .line 728
    move/from16 p7, v7

    .line 730
    goto/16 :goto_e

    .line 732
    :cond_1a
    :goto_a
    iget-object v11, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 734
    iget v12, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 736
    move/from16 p7, v7

    .line 738
    const/4 v7, 0x0

    .line 739
    :try_start_3
    invoke-virtual {v10, v11, v7, v13, v12}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 742
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 743
    invoke-virtual {v0, v8}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 746
    move-result-object v7

    .line 747
    if-nez v7, :cond_1c

    .line 749
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 752
    move-result-object v7

    .line 753
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 756
    move-result-object v7

    .line 757
    check-cast v7, Landroid/view/autofill/AutofillValue;

    .line 759
    if-eqz v7, :cond_1b

    .line 761
    invoke-virtual {v7}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 764
    move-result v8

    .line 765
    if-eqz v8, :cond_1b

    .line 767
    invoke-virtual {v7}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 770
    move-result-object v7

    .line 771
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 774
    move-result-object v7

    .line 775
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 778
    move-result-object v7

    .line 779
    goto :goto_b

    .line 780
    :cond_1b
    const/4 v7, 0x0

    .line 781
    :goto_b
    move-object/from16 v20, v7

    .line 783
    const/16 v18, 0x0

    .line 785
    const/16 v19, 0x1

    .line 787
    goto :goto_d

    .line 788
    :cond_1c
    iget-object v7, v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 790
    if-nez v7, :cond_1e

    .line 792
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 794
    if-eqz v11, :cond_1d

    .line 796
    new-instance v11, Ljava/lang/StringBuilder;

    .line 798
    const-string v12, "Explicitly disabling filter at id "

    .line 800
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 806
    const-string v12, " for dataset #"

    .line 808
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    move-result-object v8

    .line 818
    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1d
    move-object/from16 v18, v7

    .line 823
    const/16 v19, 0x0

    .line 825
    :goto_c
    const/16 v20, 0x0

    .line 827
    goto :goto_d

    .line 828
    :cond_1e
    move-object/from16 v18, v7

    .line 830
    const/16 v19, 0x1

    .line 832
    goto :goto_c

    .line 833
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    .line 836
    move-result-object v7

    .line 837
    invoke-virtual {v1, v10, v7}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 840
    new-instance v7, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .line 842
    move-object/from16 v16, v7

    .line 844
    move-object/from16 v17, v0

    .line 846
    move-object/from16 v21, v10

    .line 848
    invoke-direct/range {v16 .. v21}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    .line 851
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    goto :goto_f

    .line 855
    :catch_2
    move-exception v0

    .line 856
    :goto_e
    invoke-static {v6, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    :goto_f
    add-int/lit8 v5, v5, 0x1

    .line 861
    move/from16 v7, p7

    .line 863
    goto/16 :goto_9

    .line 865
    :cond_1f
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 867
    invoke-direct {v0, v1, v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    .line 870
    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 872
    const v2, 0x102020e

    .line 875
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 878
    move-result-object v2

    .line 879
    check-cast v2, Landroid/widget/ListView;

    .line 881
    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 883
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 886
    const/4 v4, 0x0

    .line 887
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 890
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;

    .line 892
    invoke-direct {v4, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 895
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 898
    if-nez p4, :cond_20

    .line 900
    const/4 v2, 0x0

    .line 901
    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 903
    goto :goto_10

    .line 904
    :cond_20
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 907
    move-result-object v2

    .line 908
    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 910
    :goto_10
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    .line 913
    move-result v2

    .line 914
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;

    .line 916
    invoke-direct {v4, v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V

    .line 919
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 921
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;

    .line 923
    invoke-direct {v5, v1, v2}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    .line 926
    invoke-virtual {v4, v0, v5}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 929
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 931
    invoke-direct {v0, v1, v9, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    .line 934
    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 936
    :goto_11
    return-void
.end method

.method public static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 8
    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    move-result-object v1

    .line 14
    const v2, 0x1120016

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 23
    int-to-float v2, v1

    .line 24
    int-to-float v1, v1

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 28
    move-result v1

    .line 29
    float-to-int v1, v1

    .line 30
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 35
    move-result-object p0

    .line 36
    const v1, 0x1120015

    .line 39
    invoke-virtual {p0, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 42
    iget p0, p1, Landroid/graphics/Point;->y:I

    .line 44
    int-to-float v1, p0

    .line 45
    int-to-float p0, p0

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 49
    move-result p0

    .line 50
    float-to-int p0, p0

    .line 51
    iput p0, p1, Landroid/graphics/Point;->y:I

    .line 53
    return-void
.end method


# virtual methods
.method public final applyCancelAction(Landroid/view/View;[I)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 6
    const-string v1, "FillUi"

    .line 8
    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "fill UI has "

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    array-length v2, p2

    .line 19
    const-string v3, " actions"

    .line 21
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 26
    if-nez v0, :cond_2

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo p2, "cannot apply actions because fill UI root is not a ViewGroup: "

    .line 33
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 47
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    array-length v2, p2

    .line 51
    if-ge v0, v2, :cond_4

    .line 53
    aget v2, p2, v0

    .line 55
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_3

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    const-string v4, "Ignoring cancel action for view "

    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, " because it\'s not on "

    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-instance v2, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;

    .line 89
    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 92
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    return-void
.end method

.method public final requestShowFillUi()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 3
    iget v4, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 5
    iget v5, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 7
    iget-object v7, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 9
    iget-object p0, v0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 11
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 13
    if-eqz p0, :cond_3

    .line 15
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Ljava/lang/Object;

    .line 17
    move-object v3, v0

    .line 18
    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 20
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 22
    const-string v0, "Do not show full UI on "

    .line 24
    const-string v1, "Call to Session#requestShowFillUi() rejected - session: "

    .line 26
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 28
    monitor-enter v8

    .line 29
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 31
    if-eqz v2, :cond_0

    .line 33
    const-string p0, "AutofillSession"

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, " destroyed"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    monitor-exit v8

    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 61
    invoke-virtual {v3, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz v1, :cond_1

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 75
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 77
    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    .line 79
    iget-object v6, v0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 81
    invoke-interface/range {v1 .. v7}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    :try_start_2
    const-string v0, "AutofillSession"

    .line 88
    const-string v1, "Error requesting to show fill UI"

    .line 90
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 96
    if-eqz v1, :cond_2

    .line 98
    const-string v1, "AutofillSession"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, " as it is not the current view ("

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 115
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string p0, ") anymore"

    .line 120
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    :goto_0
    monitor-exit v8

    .line 131
    goto :goto_2

    .line 132
    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    throw p0

    .line 134
    :cond_3
    :goto_2
    return-void
.end method

.method public final updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    move-result p1

    .line 5
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result p1

    .line 11
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 13
    add-int/2addr p1, p2

    .line 14
    if-eq p1, p2, :cond_0

    .line 16
    iput p1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public final updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result p1

    .line 5
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result p1

    .line 11
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 13
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result p1

    .line 17
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 19
    if-eq p1, p2, :cond_0

    .line 21
    iput p1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method
